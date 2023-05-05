import SwiftUI

struct RestaurantCellView: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                RestaurantView()
            } label: {
                VStack(alignment: .leading) {
                    ImageView(image: "restaurant", height: 180)
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Siwy Dym")
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
                                CategoryCellView(category: .vegan)
                                CategoryCellView(category: .cafe)
                                CategoryCellView(category: .drinks)
                                CategoryCellView(category: .lunch)
                            }
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                }
            }
        }
    }
}

struct RestaurantCellView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantCellView()
    }
}
