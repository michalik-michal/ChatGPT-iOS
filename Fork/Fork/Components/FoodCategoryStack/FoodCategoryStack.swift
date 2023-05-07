//
//  FoodCategoryStack.swift
//  Fork
//
//  Created by Michal Michalik on 05/05/2023.
//

import SwiftUI

struct FoodCategoryStack: View {
    
    var categories: [MealCategory]
    
    @Namespace var animation
    @State private var selectedCategory: MealCategory = .all
    @Binding var mealCategory: MealCategory
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(categories, id: \.self) { category in
                        VStack {
                            Text(category.rawValue)
                                .font(.subheadline)
                                .fontWeight(selectedCategory == category ? .bold : .regular)
                                .frame(width: 80)
                                .id(category.rawValue)
                            if selectedCategory == category {
                                Capsule()
                                    .foregroundColor(.black)
                                    .frame(height: 2)
                                    .matchedGeometryEffect(id: "filter", in: animation)
                            } else {
                                Capsule()
                                    .foregroundColor(.clear)
                                    .frame(height: 2)
                            }
                        }
                        .onTapGesture {
                            withAnimation {
                                self.selectedCategory = category
                                self.mealCategory = category
                                proxy.scrollTo(selectedCategory, anchor: .center)
                            }
                        }
                    }
                }
                .onChange(of: mealCategory) {  category in
                    withAnimation {
                        selectedCategory = category
                        proxy.scrollTo(selectedCategory, anchor: .center)
                    }
                }
                .overlay {
                    Divider()
                        .offset(y: 15)
                }
            }
        }
    }
}

struct FoodCategoryStack_Previews: PreviewProvider {
    
    static let categories: [MealCategory] = [.all, .main, .breakfast, .drinks, .pasta, .pizza]
    
    static var previews: some View {
        FoodCategoryStack(categories: categories, mealCategory: .constant(.all))
    }
}
