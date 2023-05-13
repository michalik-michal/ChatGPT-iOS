import SwiftUI

struct FoodCell: View {
    
    var food: FoodModel
    
    var body: some View {
        HStack(alignment: .top) {
            Image(food.image)
                .resizable()
                .frame(width: 130, height: 130)
            VStack(alignment: .leading) {
                Text(food.title)
                    .font(.title2).bold()
                Grid(alignment: .leading) {
                    GridRow {
                        Text("Becon")
                        Text("Chease")
                        Text("Meat")
                    }
                    Text("Pickels")
                }
                .foregroundColor(.gray)
            }
            Spacer()
        }
        .frame(height: 130)
        .overlay(alignment: .bottomTrailing) {
            Text("\(food.price) zł")
                .font(.title2.bold())
                .padding()
        }
    }
}

struct FoodCell_Previews: PreviewProvider {
    
    static let foodModel = FoodModel(price: 37,
                                     title: "Cheese becon",
                                     ingredients: ["Becon", "Cheese", "Meat", "Pickles"],
                                     image: "burger")
    
    static var previews: some View {
        FoodCell(food: foodModel)
    }
}
