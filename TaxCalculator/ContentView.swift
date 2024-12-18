//
//  ContentView.swift
//  TaxCalculator
//
//  Created by silicagel on 2024/11/30.
//

import SwiftUI

struct ContentView: View {
    @State var InputText = ""

    var body: some View {
        VStack(spacing: 20){
            TextField("ここに文字を入力", text: $InputText)
                .keyboardType(.numberPad)
            Text("価格：\(InputText)")
            Text("消費税8%：\((Double(InputText) ?? 0) * 0.08)")
            Text("消費税10%：\((Double(InputText) ?? 0) * 0.10)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
