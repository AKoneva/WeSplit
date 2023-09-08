//
//  PercentPicker.swift
//  WeSplit
//
//  Created by Анна Перехрест  on 2023/09/07.
//

import SwiftUI

struct PercentPicker: View {
    @Binding var tipPercentage: Int
    
    var body: some View {
        Form {
            Section {
                Picker("How much tip do you want to leave?", selection: $tipPercentage) {
                    ForEach(0..<101) {
                        Text($0, format: .percent)
                    }
                }
                .pickerStyle(.inline)
            }
        }
        .navigationTitle("Tips")
    }
}

struct PercentPicker_Previews: PreviewProvider {
    static var previews: some View {
        PercentPicker(tipPercentage: .constant(0))
    }
}
