// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

protocol HPOnRenderApiProtocol {
    func getAllCharacters() async throws -> [HPCharacter]
    func getCharacter(id: UUID) async throws -> HPCharacter
    func getStudents() async throws -> [HPCharacter]
    func getStaff() async throws -> [HPCharacter]
    func getHouseStudents(_ house: HPHouse) async throws -> [HPCharacter]
    func getAllSpells() async throws -> [HPSpells]
}

public class HPOnRenderApi: HPOnRenderApiProtocol {
    
    public init() {}
    
    public func getAllCharacters() async throws -> [HPCharacter] {
        guard let url = HPApiUrl().getUrl(call: .getAllCharacters) else {
            throw HPError.invalidURL
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            return try newJSONDecoder().decode([HPCharacter].self, from: data)
        } catch {
            throw error
        }
    }
    
    public func getCharacter(id: UUID) async throws -> HPCharacter {
        guard let url = HPApiUrl().getUrl(call: .getCharacter(id: id)) else {
            throw HPError.invalidURL
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            return try newJSONDecoder().decode(HPCharacter.self, from: data)
        } catch {
            throw error
        }
    }
    
    public func getStudents() async throws -> [HPCharacter] {
        guard let url = HPApiUrl().getUrl(call: .getStudents) else {
            throw HPError.invalidURL
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            return try newJSONDecoder().decode([HPCharacter].self, from: data)
        } catch {
            throw error
        }
    }
    
    public func getStaff() async throws -> [HPCharacter] {
        guard let url = HPApiUrl().getUrl(call: .getStaff) else {
            throw HPError.invalidURL
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            return try newJSONDecoder().decode([HPCharacter].self, from: data)
        } catch {
            throw error
        }
    }
    
    public func getHouseStudents(_ house: HPHouse) async throws -> [HPCharacter] {
        guard let url = HPApiUrl().getUrl(call: .getHouseStudents(house: house)) else {
            throw HPError.invalidURL
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            return try newJSONDecoder().decode([HPCharacter].self, from: data)
        } catch {
            throw error
        }
    }
    
    public func getAllSpells() async throws -> [HPSpells] {
        guard let url = HPApiUrl().getUrl(call: .getAllSpells) else {
            throw HPError.invalidURL
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            return try newJSONDecoder().decode([HPSpells].self, from: data)
        } catch {
            throw error
        }
    }
}
