//
//  LifespanPredictionApp.swift
//  LifespanPrediction WatchKit Extension
//
//  Created by Haotian Huang on 12/3/22.
//

import SwiftUI

@main
struct LifespanPredictionApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .environmentObject(ContentModel())

            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
