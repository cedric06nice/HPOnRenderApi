//
//  HPApiUrl.swift
//
//
//  Created by Cedric Pugnaire on 03/02/2024.
//

import Foundation

internal class HPApiUrl {
    
    internal var endpoint = "https://hp-api.onrender.com/api"
    
    internal enum HPApiPath {
        case getAllCharacters
        case getCharacter(id: UUID)
        case getStudents
        case getStaff
        case getHouseStudents(house: HPHouse)
        case getAllSpells
    }
    
    internal func checkUrl(path: String) -> URL? {
        return URL(string: endpoint.appending(path))
    }
    
    internal func getUrl(call: HPApiUrl.HPApiPath) -> URL? {
        switch call {
        case .getAllCharacters:
            return checkUrl(path: "/characters")
        case .getCharacter(let id):
            return checkUrl(path: "/character/\(id.uuidString.lowercased())")
        case .getStudents:
            return checkUrl(path: "/students")
        case .getStaff:
            return checkUrl(path: "/staff")
        case .getHouseStudents(let house):
            return checkUrl(path: "/characters/house/\(house.rawValue.lowercased())")
        case .getAllSpells:
            return checkUrl(path: "/spells")
        }
    }
}
