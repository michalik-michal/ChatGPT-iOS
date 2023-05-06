import SwiftUI

struct RestaurantView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ImageView(image: "restaurant", height: 180)
            VStack {
                titleStack
                adressStack
                secondaryStack
                buttonStack
                FoodCategoryStack(categories: [.all, .main, .pizza, .pasta, .drinks, .breakfast])
                    .padding(.top)
                Spacer()
            }
            .padding(.horizontal)
        }
    }
    
    private var titleStack: some View {
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
    }
    
    private var adressStack: some View {
        HStack {
            Text("Ul. Pod Wawelem 3b")
                .foregroundColor(.gray)
            Spacer()
            Text("From Google")
                .foregroundColor(.gray)
        }
    }
    
    private var secondaryStack: some View {
        HStack {
            Text("10:00 - 23:00")
                .foregroundColor(.gray)
                .bold()
            Spacer()
            Text("2,3 km")
                .foregroundColor(.gray)
                .bold()
        }
    }
    
    private var buttonStack: some View {
        HStack {
            HStack {
                Image("googlemaps")
                    .resizable()
                    .frame(width: 20, height: 20)
                Text("Navigate")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.black, lineWidth: 1))
            HStack {
                Image(systemName: "iphone")
                Text("Call")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.black, lineWidth: 1))
        }
    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView()
    }
}
