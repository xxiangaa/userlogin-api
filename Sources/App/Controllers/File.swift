//
//  File.swift
//  
//
//  Created by Xiang Maxine on 22/6/2022.
//

import Foundation
import Vapor

enum Status: String, Codable {
    case error = "error"
    case ok = "ok"
}

struct UserContent: Content {
    var userStatus: Status
    var id: String
    var username: String
    var firstName: String
    var lastName: String
    var email: String
    var phone: String
}

struct User: RouteCollection {
    func boot(routes: Vapor.RoutesBuilder) throws {
        routes.post("user", use: self.post)
    }
    func post(req: Request) throws -> UserContent {
        return UserContent(userStatus: .ok, id: "10", username: "theUser", firstName: "John", lastName:"James", email: "john@email.com", phone: "12345")
    }
}
