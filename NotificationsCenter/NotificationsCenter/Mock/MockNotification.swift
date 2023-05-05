//
//  MockNotification.swift
//  NotificationsCenter
//
//  Created by Michal Michalik on 05/05/2023.
//

import Foundation

class MockNotification {
    static let notification = NotificationModel(category: .shopping, date: "Yesterday", headline: "Sed ut perspicitatis unde omnis iste natus", caption: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fughit", isRead: false)
    
    static let notificationArray = [
        NotificationModel(category: .shopping, date: "30 min", headline: "Sed ut perspicitatis unde omnis iste natus", caption: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fughit", isRead: false),
        NotificationModel(category: .shopping, date: "1 hour", headline: "Sed ut perspicitatis unde omnis iste natus", caption: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fughit", isRead: false),
        NotificationModel(category: .business, date: "Yesterday", headline: "Sed ut perspicitatis unde omnis iste natus", caption: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fughit", isRead: true),
        NotificationModel(category: .shopping, date: "Yesterday", headline: "Sed ut perspicitatis unde omnis iste natus", caption: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fughit", isRead: false),
        NotificationModel(category: .business, date: "Thursday", headline: "Sed ut perspicitatis unde omnis iste natus", caption: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fughit", isRead: true),
        NotificationModel(category: .business, date: "Thursday", headline: "Sed ut perspicitatis unde omnis iste natus", caption: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fughit", isRead: true)
    ]
}
