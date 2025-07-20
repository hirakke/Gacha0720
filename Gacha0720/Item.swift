//
//  Item.swift
//  Gacha0720
//
//  Created by Keiju Hiramoto on 2025/07/20.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
