import SwiftUI

struct ImageView: View {
    
    var image: String
    var height: CGFloat
    
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: height)
            .clipped()
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: "restaurant", height: 180)
    }
}
