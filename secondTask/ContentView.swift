//
//  ContentView.swift
//  secondTask
//
//  Created by Farzin macbook on 1/16/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ItemsViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.items.indices, id: \.self) { index in
                Section(header: Text("Item \(index) Description \(viewModel.items[index].config.option)")) {
                    HStack {
                        Picker(selection: $viewModel.items[index].config.option, label: Text("Option")) {
                            Text("0").tag(0)
                            Text("1").tag(1)
                            Text("2").tag(2)
                        }.pickerStyle(SegmentedPickerStyle())

                        Toggle("", isOn: $viewModel.items[index].config.toggle)
                    }
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
