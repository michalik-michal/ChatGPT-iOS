import SwiftUI

struct RestaurantView: View {
    
    @State private var selectedCategory: MealCategory = .all
    @Namespace var animation
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                ImageView(image: "restaurant", height: 180)
                VStack {
                    VStack {
                        titleStack
                        adressStack
                        secondaryStack
                        buttonStack
//                        FoodCategoryStack(categories: [.all, .main, .pizza, .pasta, .drinks, .breakfast], mealCategory: $selectedCategory)
//                            .padding(.top)
                        foodCategoryStack(categories: [.all, .main, .pizza, .pasta, .drinks, .breakfast])
                            .padding(.top)
                    }
                    .padding(.horizontal)
                    menuPageView
                    Spacer()
                }
            }
        }
    }
    
    private func foodCategoryStack(categories: [MealCategory]) -> some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(categories, id: \.self) { category in
                        VStack {
                            Text(category.rawValue)
                                .font(.subheadline)
                                .fontWeight(selectedCategory == category ? .bold : .regular)
                                .frame(width: 80)
                                .id(category.rawValue)
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
                                proxy.scrollTo(selectedCategory, anchor: .center)
                            }
                        }
                    }
                }
                .onChange(of: selectedCategory) { category in
                    withAnimation {
                        proxy.scrollTo(category, anchor: .center)
                    }
                }
                .overlay {
                    Divider()
                        .offset(y: 15)
                }
            }
        }
    }
    
    private var menuPageView: some View {
        TabView(selection: $selectedCategory) {
            MenuScrollView(menu: Mock().mockFoodModel())
                .tag(MealCategory.all)
            MenuScrollView(menu: Mock().mockFoodModel())
                .tag(MealCategory.main)
            MenuScrollView(menu: Mock().mockFoodModel())
                .tag(MealCategory.pizza)
            MenuScrollView(menu: Mock().mockFoodModel())
                .tag(MealCategory.pasta)
            MenuScrollView(menu: Mock().mockFoodModel())
                .tag(MealCategory.drinks)
            MenuScrollView(menu: Mock().mockFoodModel())
                .tag(MealCategory.breakfast)
        }
        .frame(height: 650)
        .tabViewStyle(.page(indexDisplayMode: .never))
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
