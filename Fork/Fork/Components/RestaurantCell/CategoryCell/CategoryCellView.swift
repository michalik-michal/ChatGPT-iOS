import SwiftUI

struct CategoryCellView: View {
    
    var category: Category
    @ObservedObject private var viewModel = CategoryCellViewModel()
    
    var body: some View {
        HStack(spacing: 3) {
            Image(systemName: viewModel.getCellIconName(category))
            Text(viewModel.getCellTitle(category))
        }
        .font(.footnote)
        .padding(7)
        .background(viewModel.getCellColor(category).opacity(0.3))
        .foregroundColor(viewModel.getCellColor(category))
        .cornerRadius(20)
    }
}

struct CategoryCellView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCellView(category: .vegan)
    }
}
