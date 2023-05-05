import SwiftUI

struct RestaurantsListView: View {
    
    @State private var searchText = ""
    @Binding var showModal: Bool
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Button(action: {
                        showModal = false
                    }, label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 18, height: 18, alignment: .center)
                            .foregroundColor(.black)
                    })
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.bottom)
                .overlay {
                    Text("FORK")
                        .font(.title.bold())
                }
                SearchFieldView(searchText: $searchText)
                    .padding(.horizontal, 5)
                ScrollView {
                    VStack(spacing: 0) {
                        RestaurantCellView()
                        RestaurantCellView()
                        RestaurantCellView()
                    }
                }
            }
        }
    }
}

struct RestaurantsListView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantsListView(showModal: .constant(true))
    }
}
