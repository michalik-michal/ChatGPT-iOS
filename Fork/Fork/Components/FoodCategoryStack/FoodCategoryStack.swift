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
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(categories, id: \.self) { category in
                    VStack {
                        Text(category.rawValue)
                            .font(.subheadline)
                            .fontWeight(selectedCategory == category ? .bold : .regular)
                            .frame(width: 80)
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
                        }
                    }
                }
                
            }
            .overlay {
                Divider()
                    .offset(y: 15)
            }
        }
    }
}

struct FoodCategoryStack_Previews: PreviewProvider {
    
    static let categories: [MealCategory] = [.main, .all, .breakfast, .drinks, .pasta, .pizza]
    
    static var previews: some View {
        FoodCategoryStack(categories: categories)
    }
}
