import SwiftUI

struct UserMessageView: View {
    
    var message: String
    @State private var opacity = 0.0
    
    var body: some View {
        HStack(alignment: .top) {
            Spacer()
            Text(message)
                .offset(y: 4)
            Circle()
                .foregroundColor(.green)
                .frame(width: 30)
                .overlay {
                    Text("ME")
                }
        }
        .opacity(opacity)
        .frame(maxWidth: .infinity)
        .padding()
        .foregroundColor(.white)
        .background(Color("background"))
        .onAppear {
            withAnimation {
                opacity = 1.0
            }
        }
    }
}

struct UserMessageView_Previews: PreviewProvider {
    static var previews: some View {
        UserMessageView(message: "Preview Message")
    }
}
