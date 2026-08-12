//
//  ContentView.swift
//  WeSplit
//
//  Created by Yadnesh Dongre on 08/08/26.
//

import SwiftUI

struct ContentView: View {
    @State private var billAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipAmount = 0
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        Form {
            Section {
                TextField ("Amount", value: $billAmount, format: .currency(code: Locale.current.currency?.identifier ?? "INR"))
                    .keyboardType(.decimalPad)
            }
        }
    }
}

#Preview {
    ContentView()
}
