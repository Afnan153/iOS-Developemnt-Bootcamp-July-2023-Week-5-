//
//  threadsApp.swift
//  threads
//
//  Created by afnan althobaiti on 12/02/1445 AH.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth

@main
struct ThreadsCloneApp: App {
    @ObservedObject var userprefernces = UserPreferencesViewModel()
    @ObservedObject var auth = AuthViewModel()
    @ObservedObject var userData = UserDataViewModel()
    
    init() {
        auth.reset()
    }
    var body: some Scene {
        WindowGroup {
            //            NavigationView{
//            ContentView()
            RootScreenView()
                .environmentObject(userprefernces)
                .environmentObject(auth)
                .environmentObject(userData)
        }
        //        }
    }
}
