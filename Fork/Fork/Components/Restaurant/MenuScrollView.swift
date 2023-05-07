//
//  MenuScrollView.swift
//  Fork
//
//  Created by Michal Michalik on 07/05/2023.
//

import SwiftUI

struct MenuScrollView: View {
    
    var menu: [FoodModel]
    
    var body: some View {
        //ScrollView {
            VStack(spacing: 0) {
                ForEach(menu, id: \.self) { menu in
                    FoodCell(food: menu)
                }

            }
        //}
    }
}

struct MenuScrollView_Previews: PreviewProvider {
    
    static let menu:[FoodModel] = [FoodModel(price: 25, title: "Burger", ingredients: ["Becon"], image: "burger")]
    
    static var previews: some View {
        MenuScrollView(menu: menu)
    }
}
