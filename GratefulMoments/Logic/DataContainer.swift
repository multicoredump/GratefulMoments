//
//  DataContainer.swift
//  GratefulMoments
//
//  an in-memory model container, providing the Moment type to SwiftData.
//  Created by Radhika Karandikar on 3/7/26.
//

import Foundation
import SwiftData
import SwiftUI

// The @Observable macro tells SwiftUI to watch your DataContainer for changes.
// You add the container to the environment so the model container and any future properties on DataContainer are available through the view hierarchy.
@Observable
@MainActor
class DataContainer {
    let modelContainer: ModelContainer
    
    
    var context: ModelContext {
        modelContainer.mainContext
    }
    
    
    init(includeSampleMoments: Bool = false) {
        let schema = Schema([
            Moment.self,
        ])


        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: includeSampleMoments)


        do {
            modelContainer = try ModelContainer(for: schema, configurations: [modelConfiguration])

            if includeSampleMoments {
                loadSampleMoments()
            }
            try context.save()
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }

    
    private func loadSampleMoments() {
        for moment in Moment.sampleData {
            context.insert(moment)
        }
    }
}

private let sampleContainer = DataContainer(includeSampleMoments: true)

// Make the data container observable and add it to the environment for your previews.

extension View {
    func sampleDataContainer() -> some View {
        self
            .environment(sampleContainer)
            .modelContainer(sampleContainer.modelContainer)
    }
}
