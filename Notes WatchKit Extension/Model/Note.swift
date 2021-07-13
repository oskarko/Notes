//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Oscar R. Garrucho.
//  Linkedin: https://www.linkedin.com/in/oscar-garrucho/
//  Copyright © 2021 Oscar R. Garrucho. All rights reserved.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
