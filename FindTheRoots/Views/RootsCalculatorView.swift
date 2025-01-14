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
            HStack {
               
                Text("Find the Roots")
                    .font(.system(size:40))
                Spacer ()
            }
            Image("QuadraticFormula")
                .resizable()
                .frame(width: 300, height: 100)
            Image("QuadraticEquation")
                .resizable()
                .frame(width: 250, height: 80)
            
            Spacer()
        }
        .padding()
    }
        
}

#Preview {
    RootsCalculatorView()
}
