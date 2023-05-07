//
//  FoodModel.swift
//  Fork
//
//  Created by Michal Michalik on 06/05/2023.
//
import Foundation

struct FoodModel: Hashable {
    let price: Int
    let title: String
    let ingredients: [String]
    let image: String
}
