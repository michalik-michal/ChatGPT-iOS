import SwiftUI

struct MarkerView: View {
    
    var icon: String
    var color: Color
    
    var body: some View {
        VStack(spacing: 0) {
              Image(systemName: icon)
                .font(.title)
                .foregroundColor(color)
              
              Image(systemName: "arrowtriangle.down.fill")
                .font(.caption)
                .foregroundColor(color)
                .offset(x: 0, y: -5)
            }
    }
}

struct MarkerView_Previews: PreviewProvider {
    static var previews: some View {
        MarkerView(icon: "person", color: .red)
    }
}
