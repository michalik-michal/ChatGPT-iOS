import SwiftUI

struct SearchFieldView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack {
               Image(systemName: "magnifyingglass").foregroundColor(.gray)
               TextField("Search", text: $searchText)
                   .font(Font.system(size: 15))
           }
           .padding(7)
           .background(Color.gray.opacity(0.2))
           .cornerRadius(30)
    }
}

struct SearchFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFieldView(searchText: .constant(""))
    }
}
