//
//  Powerball.swift
//  CodeBreaker
//
//  Created by Spencer Hurd on 7/30/22.
//

import Foundation

struct Powerball {
//    let id = UUID().uuidString
    let number: Int
    let color: PowerballColor
}

enum PowerballColor {
    case white
    case gold
    case outOfTheOrdinary
}
