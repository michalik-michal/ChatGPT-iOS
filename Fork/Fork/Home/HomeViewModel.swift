import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published var places: [IdentifiablePlace] = [
        IdentifiablePlace(lat: 50.049683, long: 19.944544, icon: "flag.circle.fill", color: .red),
        IdentifiablePlace(lat: 50.051993, long: 19.94549, icon: "fork.knife.circle.fill", color: .blue),
        IdentifiablePlace(lat: 50.051993, long: 19.94327, icon: "timer.circle.fill", color: .green)
    ]
}
