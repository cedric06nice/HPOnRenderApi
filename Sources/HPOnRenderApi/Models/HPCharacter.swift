//
//  HPCharacter.swift
//
//
//  Created by Cedric Pugnaire on 02/02/2024.
//

import Foundation

public struct HPCharacter: Codable, Hashable {
    public let id: UUID
    public let name: String
    public let alternateNames: [String]
    public let species: HPSpecies
    public let gender: HPGender
    public let house: HPHouse
    public let dateOfBirth: String?
    public let yearOfBirth: Int?
    public let wizard: Bool
    public let ancestry: HPAncestry
    public let eyeColour: HPEyeColour
    public let hairColour: HPHairColour
    public let wand: HPWand
    public let patronus: HPPatronus
    public let hogwartsStudent: Bool
    public let hogwartsStaff: Bool
    public let actor: String
    public let alternateActors: [String]
    public let alive: Bool
    public let image: String

    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case alternateNames = "alternate_names"
        case species = "species"
        case gender = "gender"
        case house = "house"
        case dateOfBirth = "dateOfBirth"
        case yearOfBirth = "yearOfBirth"
        case wizard = "wizard"
        case ancestry = "ancestry"
        case eyeColour = "eyeColour"
        case hairColour = "hairColour"
        case wand = "wand"
        case patronus = "patronus"
        case hogwartsStudent = "hogwartsStudent"
        case hogwartsStaff = "hogwartsStaff"
        case actor = "actor"
        case alternateActors = "alternate_actors"
        case alive = "alive"
        case image = "image"
    }
}

// MARK: HPCharacter convenience initializers and mutators

extension HPCharacter {
    internal init(data: Data) throws {
        self = try newJSONDecoder().decode(HPCharacter.self, from: data)
    }

    internal init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    internal init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    internal func with(
        id: UUID? = nil,
        name: String? = nil,
        alternateNames: [String]? = nil,
        species: HPSpecies? = nil,
        gender: HPGender? = nil,
        house: HPHouse? = nil,
        dateOfBirth: String?? = nil,
        yearOfBirth: Int?? = nil,
        wizard: Bool? = nil,
        ancestry: HPAncestry? = nil,
        eyeColour: HPEyeColour? = nil,
        hairColour: HPHairColour? = nil,
        wand: HPWand? = nil,
        patronus: HPPatronus? = nil,
        hogwartsStudent: Bool? = nil,
        hogwartsStaff: Bool? = nil,
        actor: String? = nil,
        alternateActors: [String]? = nil,
        alive: Bool? = nil,
        image: String? = nil
    ) -> HPCharacter {
        return HPCharacter(
            id: id ?? self.id,
            name: name ?? self.name,
            alternateNames: alternateNames ?? self.alternateNames,
            species: species ?? self.species,
            gender: gender ?? self.gender,
            house: house ?? self.house,
            dateOfBirth: dateOfBirth ?? self.dateOfBirth,
            yearOfBirth: yearOfBirth ?? self.yearOfBirth,
            wizard: wizard ?? self.wizard,
            ancestry: ancestry ?? self.ancestry,
            eyeColour: eyeColour ?? self.eyeColour,
            hairColour: hairColour ?? self.hairColour,
            wand: wand ?? self.wand,
            patronus: patronus ?? self.patronus,
            hogwartsStudent: hogwartsStudent ?? self.hogwartsStudent,
            hogwartsStaff: hogwartsStaff ?? self.hogwartsStaff,
            actor: actor ?? self.actor,
            alternateActors: alternateActors ?? self.alternateActors,
            alive: alive ?? self.alive,
            image: image ?? self.image
        )
    }

    internal func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    internal func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

typealias HPC = [HPCharacter]

extension Array where Element == HPC.Element {
    internal init(data: Data) throws {
        self = try newJSONDecoder().decode(HPC.self, from: data)
    }

    internal init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    internal init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    internal func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    internal func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
