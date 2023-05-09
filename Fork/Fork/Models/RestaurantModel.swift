//
//  RestaurantModel.swift
//  Fork
//
//  Created by Michal Michalik on 07/05/2023.
//

import Foundation

struct RestaurantModel: Hashable {
    let name: String
    let image: String
    let categories: [Category]
}
