//
//  TaskModel.swift
//  CBL1
//
//  Created by Angel Adrian Pimienta Flores on 10/10/24.
//

import Foundation
import SwiftData

@Model
class Task {
    var name: String
    var icon: String
    var color: String
    var freq: Int
    var count: Int
    var date: Date
    
    init(name: String, icon: String, color: String, freq: Int, count: Int, date: Date) {
        self.name = name
        self.icon = icon
        self.color = color
        self.freq = freq
        self.count = count
        self.date = date
    }
}

