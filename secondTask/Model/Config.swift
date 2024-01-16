//
//  Config.swift
//  secondTask
//
//  Created by Farzin macbook on 1/16/24.
//

import Foundation

struct Config: Codable, Identifiable {
    var id: UUID = UUID()
    var option: Int
    var toggle: Bool
}
