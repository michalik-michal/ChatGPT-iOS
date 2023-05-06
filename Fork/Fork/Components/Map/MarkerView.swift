import SwiftUI

struct MarkerView: View {
    
    var icon: String
    var color: Color
    var rating: Double
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 7) {
                Image(systemName: icon)
                    .font(.title2)
                    .foregroundColor(.white)
                Text(rating.description)
                    .foregroundColor(.white)
                    .font(.system(size: 15))
            }
            .padding(3)
            .background(color.opacity(1))
            .cornerRadius(20)
            Image(systemName: "arrowtriangle.down.fill")
                .font(.system(size: 12))
                .foregroundColor(color)
                .offset(x: 0, y: -1)
        }
    }
}

struct MarkerView_Previews: PreviewProvider {
    static var previews: some View {
        MarkerView(icon: "person.circle.fill", color: .red, rating: 4.9)
    }
}
