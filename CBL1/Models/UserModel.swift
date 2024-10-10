//
//  UserModel.swift
//  CBL1
//
//  Created by Angel Adrian Pimienta Flores on 10/10/24.
//

import Foundation
import SwiftData

@Model
class User {
    var name: String
    var image: Data?
    var points: Int
    var completed: Int

    init(name: String, image: Data, points: Int, completed: Int) {
        self.name = name
        self.image = image
        self.points = points
        self.completed = completed
    }
}
