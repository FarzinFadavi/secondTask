//
//  extensions.swift
//  secondTask
//
//  Created by Farzin macbook on 1/16/24.
//

import Foundation

extension UserDefaults {
    func saveData<T: Codable>(_ object: T, forKey key: String) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(object) {
            UserDefaults.standard.set(encoded, forKey: key)
        }
    }

    func fetchData<T: Codable>(forKey key: String) -> T? {
        if let savedData = UserDefaults.standard.object(forKey: key) as? Data {
            let decoder = JSONDecoder()
            if let loadedObject = try? decoder.decode(T.self, from: savedData) {
                return loadedObject
            }
        }
        return nil
    }
}
