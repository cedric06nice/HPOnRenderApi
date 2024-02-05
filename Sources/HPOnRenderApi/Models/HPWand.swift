//
//  HPWand.swift
//
//
//  Created by Cedric Pugnaire on 02/02/2024.
//

import Foundation

/**
 * The `HPWand` struct represents the Harry Potter wands.
 *
 * It conforms to the `Codable` and `Hashable` protocols.
 */
public struct HPWand: Codable, Hashable {

    /// The type of wood used for the wand.
    public let wood: HPWandWood

    /// The core material of the wand.
    public let core: HPWandCore

    /// The length of the wand in inches. Can be nil if not specified.
    public let length: Double?

    private enum CodingKeys: String, CodingKey {
        case wood = "wood"
        case core = "core"
        case length = "length"
    }
}

// MARK: HPWand convenience initializers and mutators

extension HPWand {
    internal init(data: Data) throws {
        self = try newJSONDecoder().decode(HPWand.self, from: data)
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
        wood: HPWandWood? = nil,
        core: HPWandCore? = nil,
        length: Double?? = nil
    ) -> HPWand {
        return HPWand(
            wood: wood ?? self.wood,
            core: core ?? self.core,
            length: length ?? self.length
        )
    }

    internal func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    internal func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
