//
//  Mock.swift
//  Fork
//
//  Created by Michal Michalik on 07/05/2023.
//

import Foundation


class Mock {
    
    func mockPizzaMenu() -> [FoodModel] {
        return [
            FoodModel(price: 31, title: "Margharita", ingredients: [], image: "margharita"),
            FoodModel(price: 36, title: "Hawajska", ingredients: [], image: "hawajska"),
            FoodModel(price: 35, title: "Capricciosa", ingredients: [], image: "capricciosa"),
            FoodModel(price: 40, title: "Parma", ingredients: [], image: "parma"),
            FoodModel(price: 37, title: "Salame", ingredients: [], image: "salami")]
    }
    
    func mockFoodModel() -> [FoodModel] {
        return [
            FoodModel(price: 31, title: "Margharita", ingredients: [], image: "margharita"),
            FoodModel(price: 35, title: "Capricciosa", ingredients: [], image: "capricciosa"),
            FoodModel(price: 37, title: "Salame", ingredients: [], image: "salami"),
            FoodModel(price: 36, title: "Makaron", ingredients: [], image: "pasta2"),
            FoodModel(price: 37, title: "Salame", ingredients: [], image: "pasta3")]
    }
    
    func mockPastaMenu() -> [FoodModel] {
        return [
            FoodModel(price: 31, title: "Pasta", ingredients: [], image: "pasta"),
            FoodModel(price: 36, title: "Bolognese", ingredients: [], image: "pasta2"),
            FoodModel(price: 35, title: "Carbonara", ingredients: [], image: "carbonara"),
            FoodModel(price: 40, title: "Bolognese", ingredients: [], image: "bolognese"),
            FoodModel(price: 37, title: "Makaron", ingredients: [], image: "pasta3")]
    }
    
    func mockFoodCell() -> [FoodCell] {
        return [
            FoodCell(food: FoodModel(price: 37, title: "Becon Cheese", ingredients: [], image: "burger")),
            FoodCell(food: FoodModel(price: 31, title: "Pasta", ingredients: [], image: "pasta")),
            FoodCell(food: FoodModel(price: 35, title: "Owoce morza", ingredients: [], image: "pasta2")),
            FoodCell(food: FoodModel(price: 40, title: "Becon Cheese", ingredients: [], image: "burger2")),
            FoodCell(food: FoodModel(price: 37, title: "House burger", ingredients: [], image: "burger")),]
    }
    
    func mockRestaurantModels() -> [RestaurantModel] {
        return [
            RestaurantModel(name: "Siwy Dym", image: "restaurant", categories: [.lunch, .drinks, .cafe, .vegan]),
            RestaurantModel(name: "Biała Mewa", image: "restaurant2", categories: [.cafe, .drinks]),
            RestaurantModel(name: "Frytki Belgijskie", image: "restaurant3", categories: [.lunch])
        ]
    }
    
}
