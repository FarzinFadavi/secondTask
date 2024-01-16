//
//  ViewModel.swift
//  secondTask
//
//  Created by Farzin macbook on 1/16/24.
//

import Foundation


class ItemsViewModel: ObservableObject {
    @Published var items: [Item] {
        didSet {
            saveToUserDefaults()
        }
    }

    init() {
            self.items = UserDefaults.standard.fetchData(forKey: "configs") ?? [
                Item(config: Config(option: 0, toggle: false)),
                Item(config: Config(option: 1, toggle: true)),
                Item(config: Config(option: 2, toggle: false))
            ]
        }

    func saveToUserDefaults() {
        UserDefaults.standard.saveData(items, forKey: "configs")
    }
}
