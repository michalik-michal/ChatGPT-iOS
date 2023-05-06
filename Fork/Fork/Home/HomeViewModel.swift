import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published var places: [IdentifiablePlace] = [
        IdentifiablePlace(lat: 50.049683, long: 19.944544, icon: "flag.circle.fill", color: .red, rating: 4.8),
        IdentifiablePlace(lat: 50.051993, long: 19.94549, icon: "fork.knife.circle.fill", color: .blue, rating: 4.2),
        IdentifiablePlace(lat: 50.051993, long: 19.94327, icon: "timer.circle.fill", color: .green, rating: 3.9)
    ]
}
