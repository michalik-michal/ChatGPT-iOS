import SwiftUI
import MapKit

struct HomeView: View {
    
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 50.049683,
                                           longitude: 19.944544),
            latitudinalMeters: 750,
            longitudinalMeters: 750)
    @State private var showListView = false
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            VStack {
                Spacer()
                listButton
            }
        }
        .foregroundColor(.black)
        .fullScreenCover(isPresented: $showListView) {
            RestaurantsListView(showModal: $showListView)
        }
    }

    private var listButton: some View {
        HStack {
            Image(systemName: "square.stack.3d.up")
            Text("List")
        }
        .padding()
        .frame(width: 100, height: 40)
        .background(.white)
        .cornerRadius(15)
        .onTapGesture {
            showListView.toggle()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
