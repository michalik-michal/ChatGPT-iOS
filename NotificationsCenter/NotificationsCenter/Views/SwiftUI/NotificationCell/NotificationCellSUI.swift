//
//  NotificationCellSUI.swift
//  Amway
//
//  Copyright © 2023 Amway. All rights reserved.
//

import SwiftUI

struct NotificationCellSUI: View {
    
    var notification: NotificationModel
    @State private var cellOffset = 0.0
    
    var body: some View {
            NavigationLink {
                NotificationDetailViewSUI(notification: notification)
            } label: {
                VStack() {
                    VStack( alignment: .leading) {
                        headerStack
                        VStack(alignment: .leading) {
                            Text(notification.headline)
                                .foregroundColor(.black)
                            Text(notification.caption)
                                .foregroundColor(Color("amwayGray"))
                                .multilineTextAlignment(.leading)
                        }
                        .padding(.horizontal)
                    }
                    .padding(.horizontal)
                    Divider()
                }
                .frame(width: UIScreen.main.bounds.width, height: 105)
                .background(.white)
                .offset(x: cellOffset)
                .gesture(DragGesture().onChanged({ value in
                    onChanged(value)
                }).onEnded({ value in
                    onEnd(value)
                }))
            }
            .buttonStyle(.plain)
    }
    
    private func onChanged(_ value: DragGesture.Value) {
        if cellOffset < 100 && cellOffset > -100 {
            cellOffset = value.translation.width
        }
    }
    
    private func onEnd(_ value: DragGesture.Value) {
        withAnimation {
            cellOffset = 0
        }
    }
    
    private var headerStack: some View {
        HStack {
            if !notification.isRead {
                Image("NotificationDot")
            }
            Text(notification.category.rawValue)
                .foregroundColor(Color("amwayBlue")).bold()
            Spacer()
            HStack {
                Text(notification.date)
                    .foregroundColor(Color("amwayGray"))
                Image("chevron")
            }
        }
        .padding(.leading, notification.isRead ? 16 : 0)
    }
    
    private var buttonStack: some View {
        HStack(spacing: 0) {
            HStack {
                VStack() {
                    Image("mail")
                    Text("Read")
                }
                .padding(.leading)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 105)
            .background(Color("amwayBlue"))
            HStack {
                Spacer()
                VStack {
                    Image("trash")
                    Text("Delete")
                }
                .padding(.trailing)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 105)
            .background(Color("amwayRed"))
        }
        .foregroundColor(.white)
    }
}

struct NotificationCellView_Previews: PreviewProvider {
    
    static let notification = NotificationModel(category: .shopping, date: "Yesterday", headline: "Sed ut perspicitatis unde omnis iste natus", caption: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fughit", isRead: false)
    
    static var previews: some View {
        NotificationCellSUI(notification: notification)
    }
}
