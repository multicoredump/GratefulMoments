//
//  GratefulMomentsApp.swift
//  GratefulMoments
//
//  Created by Radhika Karandikar on 3/7/26.
//

import SwiftUI
import SwiftData

@main
struct GratefulMomentsApp: App {
    
    let dataContainer = DataContainer()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(dataContainer)
        }
        .modelContainer(dataContainer.modelContainer)
    }
}
