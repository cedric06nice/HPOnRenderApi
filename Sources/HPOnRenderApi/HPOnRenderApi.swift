// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public protocol HPOnRenderApiProtocol {
    func getAllCharacters() async throws -> [HPCharacter]
    func getCharacter(id: UUID) async throws -> HPCharacter
    func getStudents() async throws -> [HPCharacter]
    func getStaff() async throws -> [HPCharacter]
    func getHouseStudents(_ house: HPHouse) async throws -> [HPCharacter]
    func getAllSpells() async throws -> [HPSpells]
}

public class HPOnRenderApi: HPOnRenderApiProtocol {
    
    public init() {}
    
    private func fetchData(from url: URL) async throws -> Data {
        return try await URLSession.shared.data(from: url).0
    }
    
    private func decodeData<T: Decodable>(data: Data, type: T.Type) throws -> T {
        return try newJSONDecoder().decode(T.self, from: data)
    }
    
    private func getUrl(call: HPApiUrl.HPApiPath) -> URL? {
        return HPApiUrl().getUrl(call: call)
    }
    
    /**
     Fetches all characters asynchronously.
     
     - Returns: An array of `HPCharacter` objects representing all characters.
     
     - Throws: An error if there was an issue fetching the characters.
     */
    public func getAllCharacters() async throws -> [HPCharacter] {
        guard let url = getUrl(call: .getAllCharacters) else {
            throw HPError.invalidURL
        }
        let data = try await fetchData(from: url)
        return try decodeData(data: data, type: [HPCharacter].self)
    }
    
    /**
     Fetches a specific character asynchronously.
     
     - Parameters:
        - id: The ID of the character to fetch.
     
     - Returns: The `HPCharacter` object representing the fetched character.
     
     - Throws: An error if there was an issue fetching the character.
     */
    public func getCharacter(id: UUID) async throws -> HPCharacter {
        guard let url = getUrl(call: .getCharacter(id: id)) else {
            throw HPError.invalidURL
        }
        let data = try await fetchData(from: url)
        return try decodeData(data: data, type: HPCharacter.self)
    }
    
    /**
     Fetches all students asynchronously.
     
     - Returns: An array of `HPCharacter` objects representing all students.
     
     - Throws: An error if there was an issue fetching the students.
     */
    public func getStudents() async throws -> [HPCharacter] {
        guard let url = getUrl(call: .getStudents) else {
            throw HPError.invalidURL
        }
        let data = try await fetchData(from: url)
        return try decodeData(data: data, type: [HPCharacter].self)
    }
    
    /**
     Fetches all staff members asynchronously.
     
     - Returns: An array of `HPCharacter` objects representing all staff members.
     
     - Throws: An error if there was an issue fetching the staff members.
     */
    public func getStaff() async throws -> [HPCharacter] {
        guard let url = getUrl(call: .getStaff) else {
            throw HPError.invalidURL
        }
        let data = try await fetchData(from: url)
        return try decodeData(data: data, type: [HPCharacter].self)
    }
    
    /**
     Fetches all students belonging to a specific house asynchronously.
     
     - Parameters:
        - house: The house for which to fetch the students.
     
     - Returns: An array of `HPCharacter` objects representing the students belonging to the specified house.
     
     - Throws: An error if there was an issue fetching the students.
     */
    public func getHouseStudents(_ house: HPHouse) async throws -> [HPCharacter] {
        guard let url = getUrl(call: .getHouseStudents(house: house)) else {
            throw HPError.invalidURL
        }
        let data = try await fetchData(from: url)
        return try decodeData(data: data, type: [HPCharacter].self)
    }
    
    /**
     Fetches all spells asynchronously.
     
     - Returns: An array of `HPSpells` objects representing all spells.
     
     - Throws: An error if there was an issue fetching the spells.
     */
    public func getAllSpells() async throws -> [HPSpells] {
        guard let url = getUrl(call: .getAllSpells) else {
            throw HPError.invalidURL
        }
        let data = try await fetchData(from: url)
        return try decodeData(data: data, type: [HPSpells].self)
    }
}
