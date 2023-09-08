//
//  PercentPicker.swift
//  WeSplit
//
//  Created by Анна Перехрест  on 2023/09/07.
//

import SwiftUI

struct PercentPicker: View {
    var body: some View {
        Form {
            Section {
                ForEach(0..<101) {
                    Text($0, format: .percent)
                }
            }
            
        }
        .navigationTitle("Select tip`s percent")
    }
}

struct PercentPicker_Previews: PreviewProvider {
    static var previews: some View {
        PercentPicker()
    }
}
