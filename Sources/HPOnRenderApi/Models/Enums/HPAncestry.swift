//
//  HPAncestry.swift
//  HP
//
//  Created by Cedric Pugnaire on 02/02/2024.
//

import Foundation

public enum HPAncestry: String, Codable, Hashable {
    case empty = ""
    case halfBlood = "half-blood"
    case halfVeela = "half-veela"
    case muggle = "muggle"
    case muggleborn = "muggleborn"
    case pureBlood = "pure-blood"
    case quarterVeela = "quarter-veela"
    case squib = "squib"
}
