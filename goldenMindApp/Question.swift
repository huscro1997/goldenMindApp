//
//  Question.swift
//  goldenMindApp
//
//  Created by 曾曜澤 on 2022/6/12.
//

import CodableCSV
import Foundation
import UIKit

struct Question: Codable {
    let question: String
    var choices: [String]
    let answer: String
}
