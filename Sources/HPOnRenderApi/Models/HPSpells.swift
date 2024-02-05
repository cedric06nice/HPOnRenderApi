//
//  HPSpells.swift
//
//
//  Created by Cedric Pugnaire on 02/02/2024.
//

import Foundation

/**
 * The `HPSpells` struct represents a spell in the Harry Potter universe.
 *
 * It conforms to the `Codable` and `Hashable` protocols.
 */
public struct HPSpells: Codable, Hashable {
    
    /// The unique identifier of the spell.
    public let id: UUID
    
    /// The name of the spell.
    public let name: String
    
    /// A description of the spell.
    public let description: String

    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case description = "description"
    }
}

// MARK: HPCharacter convenience initializers and mutators

extension HPSpells {
    internal init(data: Data) throws {
        self = try newJSONDecoder().decode(HPSpells.self, from: data)
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
        description: String? = nil
    ) -> HPSpells {
        return HPSpells(
            id: id ?? self.id,
            name: name ?? self.name,
            description: description ?? self.description
        )
    }

    internal func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    internal func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

typealias HPS = [HPSpells]

extension Array where Element == HPS.Element {
    internal init(data: Data) throws {
        self = try newJSONDecoder().decode(HPS.self, from: data)
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
