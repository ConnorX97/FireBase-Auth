//
//  iOSPostApp.swift
//  iOSPost
//
//  Created by Sherzod Fayziev on 2022/05/21.
//
import Foundation
import SwiftUI
import Firebase
import FirebaseAuth

@main
struct iOSPostApp: App {
    
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            StarterScreen().environmentObject(SessionsStore())
        }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
