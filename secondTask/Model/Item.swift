//
//  Item.swift
//  secondTask
//
//  Created by Farzin macbook on 1/16/24.
//

import Foundation

struct Item: Codable, Identifiable {
    var id: UUID = UUID()
    var config: Config
}
