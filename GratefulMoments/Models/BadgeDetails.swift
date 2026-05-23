//
//  BadgeDetails.swift
//  GratefulMoments
//
//  Created by Radhika Karandikar on 5/22/26.
//

import Foundation
import SwiftUI


// Give BadgeDetails a raw value of Int and declare that it conforms to Codable so the model can be saved later.
// Then declare that it conforms to CaseIterable so the rest of your code can access all its cases.
enum BadgeDetails: Int, Codable, CaseIterable {
    case firstEntry
    case fiveStars
    case shutterbug
    case expressive
    case perfectTen


    var requirements: String {
        switch self {
        case .firstEntry:
            return "Log a moment to start your journey."
        case .fiveStars:
            return "Record five moments."
        case .shutterbug:
            return "Add three entries with photos."
        case .expressive:
            return "Add five moments with a photo and text."
        case .perfectTen:
            return "Record at least 10 moments, collecting all the other badges along the way."
        }
    }
    
    var title: String {
        switch self {
        case .firstEntry:
            return "Start the Journey"
        case .fiveStars:
            return "5 Stars"
        case .shutterbug:
            return "Shutterbug"
        case .expressive:
            return "Expressive"
        case .perfectTen:
            return "Perfect 10"
        }
    }
    
    var image: ImageResource {
        switch self {
        case .firstEntry:
            return .firstEntryUnlocked
        case .fiveStars:
            return .fiveStarsUnlocked
        case .shutterbug:
            return .shutterbugUnlocked
        case .expressive:
            return .expressiveUnlocked
        case .perfectTen:
            return .perfectTenUnlocked
        }
    }
    
    var color: Color {
        switch self {
        case .firstEntry:
            return .ember
        case .fiveStars:
            return .ruby
        case .shutterbug:
            return .sapphire
        case .expressive:
            return .ocean
        case .perfectTen:
            return .ember
        }
    }



    var lockedImage: ImageResource {
        switch self {
        case .firstEntry:
            return .firstEntryLocked
        case .fiveStars:
            return .fiveStarsLocked
        case .shutterbug:
            return .shutterbugLocked
        case .expressive:
            return .expressiveLocked
        case .perfectTen:
            return .perfectTenLocked
        }
    }
    
    var congratulatoryMessage: String {
        switch self {
        case .firstEntry:
            return "Every journey begins with a single step. Congratulations — you’re on your way!"
        case .fiveStars:
            return "You’re building momentum! The more you focus on regular practice, the better you get at choosing to keep up your intentioned habits."
        case .shutterbug:
            return "Photos connect us to our past, and looking at them can take us right back to the grateful feeling we had when we snapped them."
        case .expressive:
            return "Look at you, giving yourself all the ways to savor your happy memories!"
        case .perfectTen:
            return "You're getting the hang of your new habit! Keep it up and see how far it can take you."
        }
    }

}
