//
//  NotificationDetailViewSUI.swift
//  Amway
//
//  Copyright © 2023 Amway. All rights reserved.
//

import SwiftUI

struct NotificationDetailViewSUI: View {
    
    var notification: NotificationModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                headerStack
                Divider()
                Spacer()
            }
        }
    }
    
    private var headerStack: some View {
        HStack {
            HStack(spacing: 0) {
                if !notification.isRead {
                    Image("NotificationDot")
                        .padding(.bottom)
                }
                icon
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            .padding(.bottom, 5)
            VStack(alignment: .leading, spacing: 5) {
                Text(notification.category.rawValue)
                    .foregroundColor(Color("amwayBlue"))
                    .bold()
                HStack {
                    Text("March 17, 2023")
                        .foregroundColor(Color("amwayGray"))
                    Divider()
                        .frame(height: 23)
                    Text("12:45pm")
                        .foregroundColor(Color("amwayGray"))
                }
            }
        }
        .padding(.horizontal)
    }

    private var icon: Image {
        notification.category == .business ? Image("BusinessIcon") : Image("ShoppingCartIcon")
    }
}

struct NotificationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationDetailViewSUI(notification: MockNotification.notification)
    }
}
