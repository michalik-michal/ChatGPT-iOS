import SwiftUI
import MapKit

struct IdentifiablePlace: Identifiable {
    let id: UUID
    let location: CLLocationCoordinate2D
    let icon: String
    let color: Color
    init(id: UUID = UUID(), lat: Double, long: Double, icon: String, color: Color) {
        self.id = id
        self.location = CLLocationCoordinate2D(
            latitude: lat,
            longitude: long)
        self.icon = icon
        self.color = color
    }
}
