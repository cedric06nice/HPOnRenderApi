import XCTest
@testable import HPOnRenderApi

struct MockHPOnRenderApi: HPOnRenderApiProtocol {
    
    func getAllCharacters() async throws -> [HPCharacter] {
        guard let url = Bundle.module.url(forResource: "characters", withExtension: "json") else {
            throw HPError.invalidURL
        }
        do {
            let data = try Data(contentsOf: url)
            return try newJSONDecoder().decode([HPCharacter].self, from: data)
        } catch {
            throw error
        }
    }
    
    func getCharacter(id: UUID) async throws -> HPCharacter {
        guard let url = Bundle.module.url(forResource: "characters", withExtension: "json") else {
            throw HPError.invalidURL
        }
        do {
            let data = try Data(contentsOf: url)
            guard let character = try newJSONDecoder().decode([HPCharacter].self, from: data).filter({ $0.id == id }).first else {
                throw HPError.missingData
            }
            return character
        } catch {
            throw error
        }
    }
    
    func getStudents() async throws -> [HPCharacter] {
        guard let url = Bundle.module.url(forResource: "characters", withExtension: "json") else {
            throw HPError.invalidURL
        }
        do {
            let data = try Data(contentsOf: url)
            return try newJSONDecoder().decode([HPCharacter].self, from: data).filter({ $0.hogwartsStudent == true })
        } catch {
            throw error
        }
    }
    
    func getStaff() async throws -> [HPCharacter] {
        guard let url = Bundle.module.url(forResource: "characters", withExtension: "json") else {
            throw HPError.invalidURL
        }
        do {
            let data = try Data(contentsOf: url)
            return try newJSONDecoder().decode([HPCharacter].self, from: data).filter({ $0.hogwartsStaff == true })
        } catch {
            throw error
        }
    }
    
    func getHouseStudents(_ house: HPHouse) async throws -> [HPCharacter] {
        guard let url = Bundle.module.url(forResource: "characters", withExtension: "json") else {
            throw HPError.invalidURL
        }
        do {
            let data = try Data(contentsOf: url)
            return try newJSONDecoder().decode([HPCharacter].self, from: data).filter({ $0.house == house })
        } catch {
            throw error
        }
    }
    
    func getAllSpells() async throws -> [HPSpells] {
        guard let url = Bundle.module.url(forResource: "spells", withExtension: "json") else {
            throw HPError.invalidURL
        }
        do {
            let data = try Data(contentsOf: url)
            return try newJSONDecoder().decode([HPSpells].self, from: data)
        } catch {
            throw error
        }
    }
}

final class HPOnRenderApiTests: XCTestCase {
    
    func testGetAllCharacters() async throws {
        let characters = try await MockHPOnRenderApi().getAllCharacters()
        XCTAssertEqual(characters.count, 404)
        XCTAssertEqual(characters.first?.id, UUID(uuidString: "9e3f7ce4-b9a7-4244-b709-dae5c1f1d4a8")!)
        XCTAssertEqual(characters.first?.name, "Harry Potter")
        XCTAssertEqual(characters.first?.alternateNames.first, "The Boy Who Lived")
        XCTAssertEqual(characters.first?.species, .human)
        XCTAssertEqual(characters.first?.gender, .male)
        XCTAssertEqual(characters.first?.house, .gryffindor)
        XCTAssertEqual(characters.first?.dateOfBirth, "31-07-1980")
        XCTAssertEqual(characters.first?.yearOfBirth, 1980)
        XCTAssertEqual(characters.first?.wizard, true)
        XCTAssertEqual(characters.first?.ancestry, .halfBlood)
        XCTAssertEqual(characters.first?.eyeColour, .green)
        XCTAssertEqual(characters.first?.hairColour, .black)
        XCTAssertEqual(characters.first?.wand.wood, .holly)
        XCTAssertEqual(characters.first?.wand.core, .phoenixTailFeather)
        XCTAssertEqual(characters.first?.wand.length, 11)
        XCTAssertEqual(characters.first?.patronus, .stag)
        XCTAssertEqual(characters.first?.hogwartsStudent, true)
        XCTAssertEqual(characters.first?.hogwartsStaff, false)
        XCTAssertEqual(characters.first?.actor, "Daniel Radcliffe")
        XCTAssertEqual(characters.first?.alternateActors.first, nil)
        XCTAssertEqual(characters.first?.alive, true)
        XCTAssertEqual(characters.first?.image, "https://ik.imagekit.io/hpapi/harry.jpg")
    }
    
    func testGetCharacter() async throws {
        let characters = try await MockHPOnRenderApi().getCharacter(id: UUID(uuidString: "9e3f7ce4-b9a7-4244-b709-dae5c1f1d4a8")!)
        XCTAssertEqual(characters.id, UUID(uuidString: "9e3f7ce4-b9a7-4244-b709-dae5c1f1d4a8")!)
        XCTAssertEqual(characters.name, "Harry Potter")
        XCTAssertEqual(characters.alternateNames.first, "The Boy Who Lived")
        XCTAssertEqual(characters.species, .human)
        XCTAssertEqual(characters.gender, .male)
        XCTAssertEqual(characters.house, .gryffindor)
        XCTAssertEqual(characters.dateOfBirth, "31-07-1980")
        XCTAssertEqual(characters.yearOfBirth, 1980)
        XCTAssertEqual(characters.wizard, true)
        XCTAssertEqual(characters.ancestry, .halfBlood)
        XCTAssertEqual(characters.eyeColour, .green)
        XCTAssertEqual(characters.hairColour, .black)
        XCTAssertEqual(characters.wand.wood, .holly)
        XCTAssertEqual(characters.wand.core, .phoenixTailFeather)
        XCTAssertEqual(characters.wand.length, 11)
        XCTAssertEqual(characters.patronus, .stag)
        XCTAssertEqual(characters.hogwartsStudent, true)
        XCTAssertEqual(characters.hogwartsStaff, false)
        XCTAssertEqual(characters.actor, "Daniel Radcliffe")
        XCTAssertEqual(characters.alternateActors.first, nil)
        XCTAssertEqual(characters.alive, true)
        XCTAssertEqual(characters.image, "https://ik.imagekit.io/hpapi/harry.jpg")
    }
    
    func testGetStudents() async throws {
        let characters = try await MockHPOnRenderApi().getStudents()
        XCTAssertEqual(characters.count, 101)
        XCTAssertEqual(characters.first?.id, UUID(uuidString: "9e3f7ce4-b9a7-4244-b709-dae5c1f1d4a8")!)
        XCTAssertEqual(characters.first?.name, "Harry Potter")
        XCTAssertEqual(characters.first?.alternateNames.first, "The Boy Who Lived")
        XCTAssertEqual(characters.first?.species, .human)
        XCTAssertEqual(characters.first?.gender, .male)
        XCTAssertEqual(characters.first?.house, .gryffindor)
        XCTAssertEqual(characters.first?.dateOfBirth, "31-07-1980")
        XCTAssertEqual(characters.first?.yearOfBirth, 1980)
        XCTAssertEqual(characters.first?.wizard, true)
        XCTAssertEqual(characters.first?.ancestry, .halfBlood)
        XCTAssertEqual(characters.first?.eyeColour, .green)
        XCTAssertEqual(characters.first?.hairColour, .black)
        XCTAssertEqual(characters.first?.wand.wood, .holly)
        XCTAssertEqual(characters.first?.wand.core, .phoenixTailFeather)
        XCTAssertEqual(characters.first?.wand.length, 11)
        XCTAssertEqual(characters.first?.patronus, .stag)
        XCTAssertEqual(characters.first?.hogwartsStudent, true)
        XCTAssertEqual(characters.first?.hogwartsStaff, false)
        XCTAssertEqual(characters.first?.actor, "Daniel Radcliffe")
        XCTAssertEqual(characters.first?.alternateActors.first, nil)
        XCTAssertEqual(characters.first?.alive, true)
        XCTAssertEqual(characters.first?.image, "https://ik.imagekit.io/hpapi/harry.jpg")
    }
    
    func testGetStaff() async throws {
        let characters = try await MockHPOnRenderApi().getStaff()
        XCTAssertEqual(characters.count, 25)
        XCTAssertEqual(characters.first?.id, UUID(uuidString: "CA3827F0-375A-4891-AAA5-F5E8A5BAD225")!)
        XCTAssertEqual(characters.first?.name, "Minerva McGonagall")
        XCTAssertNil(characters.first?.alternateNames.first)
        XCTAssertEqual(characters.first?.species, .human)
        XCTAssertEqual(characters.first?.gender, .female)
        XCTAssertEqual(characters.first?.house, .gryffindor)
        XCTAssertEqual(characters.first?.dateOfBirth, "04-10-1925")
        XCTAssertEqual(characters.first?.yearOfBirth, 1925)
        XCTAssertEqual(characters.first?.wizard, true)
        XCTAssertEqual(characters.first?.ancestry, .halfBlood)
        XCTAssertEqual(characters.first?.eyeColour, .empty)
        XCTAssertEqual(characters.first?.hairColour, .black)
        XCTAssertEqual(characters.first?.wand.wood, .fir)
        XCTAssertEqual(characters.first?.wand.core, .dragonHeartstring)
        XCTAssertEqual(characters.first?.wand.length, 9.5)
        XCTAssertEqual(characters.first?.patronus, .tabbyCat)
        XCTAssertEqual(characters.first?.hogwartsStudent, false)
        XCTAssertEqual(characters.first?.hogwartsStaff, true)
        XCTAssertEqual(characters.first?.actor, "Dame Maggie Smith")
        XCTAssertEqual(characters.first?.alternateActors.first, nil)
        XCTAssertEqual(characters.first?.alive, true)
        XCTAssertEqual(characters.first?.image, "https://ik.imagekit.io/hpapi/mcgonagall.jpg")
    }
    
    func testGetAllSpells() async throws {
        let characters = try await MockHPOnRenderApi().getAllSpells()
        XCTAssertEqual(characters.count, 77)
        XCTAssertEqual(characters.first?.id, UUID(uuidString: "C76A2922-BA4C-4278-BAAB-44DEFB631236")!)
        XCTAssertEqual(characters.first?.name, "Aberto")
        XCTAssertEqual(characters.first?.description, "Opens locked doors")
    }
}
