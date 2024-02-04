//
//  HPApiUrlTests.swift
//
//
//  Created by Cedric Pugnaire on 03/02/2024.
//

import XCTest
@testable import HPOnRenderApi

final class HPApiUrlTests: XCTestCase {
    
    func testgetAllCharactersUrl() {
        XCTAssertEqual(HPApiUrl().getUrl(call: .getAllCharacters),
            URL(string: "https://hp-api.onrender.com/api/characters"))
    }
    
    func testUrl() {
        XCTAssertEqual(HPApiUrl().getUrl(call: .getCharacter(id:
                    UUID(uuidString: "9e3f7ce4-b9a7-4244-b709-dae5c1f1d4a8")!)),
            URL(string: "https://hp-api.onrender.com/api/character/9e3f7ce4-b9a7-4244-b709-dae5c1f1d4a8"))
    }
    
    func testgetStudentsUrl() {
        XCTAssertEqual(HPApiUrl().getUrl(call: .getStudents),
            URL(string: "https://hp-api.onrender.com/api/students"))
    }
    
    func testgetStaffUrl() {
        XCTAssertEqual(HPApiUrl().getUrl(call: .getStaff),
            URL(string: "https://hp-api.onrender.com/api/staff"))
    }
    
    func testgetHouseStudentsUrl() {
        XCTAssertEqual(HPApiUrl().getUrl(call: .getHouseStudents(house: .gryffindor)),
            URL(string: "https://hp-api.onrender.com/api/characters/house/gryffindor"))
    }
    
    func testgetAllSpellsUrl() {
        XCTAssertEqual(HPApiUrl().getUrl(call: .getAllSpells),
            URL(string: "https://hp-api.onrender.com/api/spells"))
    }
}
