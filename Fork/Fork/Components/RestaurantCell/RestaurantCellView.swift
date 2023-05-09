import SwiftUI

struct RestaurantCellView: View {
    
    var model: RestaurantModel
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                RestaurantView()
            } label: {
                VStack(alignment: .leading) {
                    ImageView(image: model.image, height: 180)
                    VStack(alignment: .leading) {
                        HStack {
                            Text(model.name)
                                .font(.title.bold())
                                .foregroundColor(.black)
                            Spacer()
                            HStack {
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .foregroundColor(.yellow)
                                    .frame(width: 15, height: 15)
                                Text("4,8")
                                    .foregroundColor(.gray)
                                    .bold()
                                Text("(149)")
                                    .foregroundColor(.gray)
                            }
                            .padding(.top, 3)
                        }
                        HStack {
                            Text("10:00 - 23:00")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("2,3 km")
                                .foregroundColor(.gray)
                                .bold()
                        }
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(model.categories, id: \.self) { category in
                                    CategoryCellView(category: category)
                                }
                            }
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                }
            }
        }
        .buttonStyle(.plain)
    }
}

struct RestaurantCellView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantCellView(model: RestaurantModel(name: "SiwyDym", image: "restaurant", categories: [.vegan, .cafe, .drinks, .lunch]))
    }
}
