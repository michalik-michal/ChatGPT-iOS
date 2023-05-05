//
//  EmptyNotificationCell.swift
//  NotificationsCenter
//
//  Created by Michal Michalik on 05/05/2023.
//

import SwiftUI

struct EmptyNotificationCell: View {
    var body: some View {
        VStack(spacing: 15) {
            Image("amwayCloud")
            Text("Nothing to see here")
                .font(.system(size: 24))
                .bold()
            Text("You don't have any messages.")
        }
        .frame(height: 180)
        .frame(maxWidth: .infinity)
        .background(Color("lightGray"))
        .cornerRadius(12)
        .padding(.horizontal)
    }
}

struct EmptyNotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        EmptyNotificationCell()
    }
}
