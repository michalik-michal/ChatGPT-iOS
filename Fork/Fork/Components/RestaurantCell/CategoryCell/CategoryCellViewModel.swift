import SwiftUI

public enum Category {
    case vegan
    case drinks
    case cafe
    case lunch
}

class CategoryCellViewModel: ObservableObject {
    
    func getCellColor(_ category: Category) -> Color {
        switch category {
        case .vegan:
            return .green
        case .drinks:
            return .red
        case .cafe:
            return .orange
        case .lunch:
            return .blue
        }
    }
    
    func getCellIconName(_ category: Category) -> String {
        switch category {
        case .vegan:
            return "carrot"
        case .drinks:
            return "wineglass"
        case .cafe:
            return "cup.and.saucer"
        case .lunch:
            return "fork.knife"
        }
    }
    
    func getCellTitle(_ category: Category) -> String {
        switch category {
        case .vegan:
            return "Vegan"
        case .drinks:
            return "Drinks"
        case .cafe:
            return "Cafe"
        case .lunch:
            return "Lunch"
        }
    }
    
}
