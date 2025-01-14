//
//  ContentView.swift
//  FindTheRoots
//
//  Created by Pak Ching Ethan Chen on 2025-01-14.
//

import SwiftUI

struct RootsCalculatorView: View {
    var body: some View {
        VStack {
            Text("Find the Roots")
                .font(.system(size:40))
            Image("QuadraticFormula")
                .resizable()
                .frame(width: 300, height: 100)
            Image("QuadraticEquation")
            
            
        }
        .padding()
    }
        
}

#Preview {
    RootsCalculatorView()
}
