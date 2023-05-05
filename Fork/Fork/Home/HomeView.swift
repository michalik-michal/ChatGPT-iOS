import SwiftUI
import MapKit

struct HomeView: View {
    
    @ObservedObject private var viewModel = HomeViewModel()
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 50.049683,
                                           longitude: 19.944544),
            latitudinalMeters: 750,
            longitudinalMeters: 750)
    @State private var showListView = false

    var body: some View {
        ZStack {
            map
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
    private var map: some View {
        Map(coordinateRegion: $region,
            annotationItems: viewModel.places)
        { place in
            MapAnnotation(coordinate: place.location) {
                MarkerView(icon: place.icon, color: place.color)
            }
        }
        .ignoresSafeArea()
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
