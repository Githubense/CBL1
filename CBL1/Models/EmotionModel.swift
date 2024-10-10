//
//  EmotionModel.swift
//  CBL1
//
//  Created by Angel Adrian Pimienta Flores on 10/10/24.
//

import Foundation
import SwiftData

@Model
class Emotion {
    var name: String
    var image: Data?
    var etype: EType
    var date: Date
    var text: String?
    
    init(name: String, image: Data, etype: EType, date: Date, text: String) {
        self.name = name
        self.image = image
        self.etype = etype
        self.date = date
        self.text = text
    }
}
extension Emotion {
    enum EType: String, CaseIterable, Codable {
        case anger = "Anger"
        case contempt = "Contempt"
        case disgust = "Disgust"
        case enjoyment = "Enjoyment"
        case fear = "Fear"
        case sadness = "Sadness"
        case surprise = "Surprise"
    }
}


