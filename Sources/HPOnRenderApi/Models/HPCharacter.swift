//
//  HPCharacter.swift
//
//
//  Created by Cedric Pugnaire on 02/02/2024.
//

import Foundation

/**
 * The `HPCharacter` struct represents the Harry Potter characters.
 *
 * It conforms to the `Codable` and `Hashable` protocols.
 */
public struct HPCharacter: Codable, Hashable {
    
    /// A unique identifier for the character, represented as a UUID.
    public let id: UUID
    
    /// The name of the character, represented as a String.
    public let name: String
    
    /// An array of alternate names for the character, represented as an array of Strings.
    public let alternateNames: [String]
    
    /// The species of the character, represented by an instance of the `HPSpecies` enum.
    public let species: HPSpecies
    
    /// The gender of the character, represented by an instance of the `HPGender` enum.
    public let gender: HPGender
    
    /// The house that the character belongs to, represented by an instance of the `HPHouse` enum.
    public let house: HPHouse
    
    /// The date of birth of the character, represented as an optional String.
    public let dateOfBirth: String?
    
    /// The year of birth of the character, represented as an optional Int.
    public let yearOfBirth: Int?
    
    /// A boolean value indicating whether the character is a wizard or not.
    public let wizard: Bool
    
    /// The ancestry or lineage of the character, represented by an instance of the `HPAncestry` enum.
    public let ancestry: HPAncestry
    
    /// The eye color of the character, represented by an instance of the `HPEyeColour` enum.
    public let eyeColour: HPEyeColour
    
    /// The hair color of the character, represented by an instance of the `HPHairColour` enum.
    public let hairColour: HPHairColour
    
    /// Information about the wand owned by the character, represented by an instance of the `HPWand` struct.
    public let wand: HPWand
    
    /// The patronus animal associated with this character, represented by an instance of the `HPPatronus` struct.
    public let patronus: HPPatronus
    
    /// A boolean value indicating whether the character is a student at Hogwarts or not.
    public let hogwartsStudent: Bool
    
    /// A boolean value indicating whether the character is a staff member at Hogwarts or not.
    public let hogwartsStaff: Bool
    
    /// The name of the actor who portrayed this character in the Harry Potter movies, represented as a String.
    public let actor: String
    
    /// An array of alternate actors who portrayed this character, represented as an array of Strings.
    public let alternateActors: [String]
    
    /// A boolean value indicating whether the character is alive or not.
    public let alive: Bool
    
    /// The URL or path to an image representing the character, represented as a String.
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
