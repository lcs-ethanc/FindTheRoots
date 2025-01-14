//
//  ContentView.swift
//  FindTheRoots
//
//  Created by Pak Ching Ethan Chen on 2025-01-14.
//

import SwiftUI

struct RootsCalculatorView: View {
    @State var a: Double = 0
    @State var b: Double = 0
    @State var c: Double = 0
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
            HStack{
                VStack{
                    Slider(value: $a, in: 1...100)
                    Text("a = \(a)")
                }
                VStack{
                    Slider(value: $b, in: 1...100)
                    Text("b = \(b)")
                }
                VStack{
                    Slider(value: $c, in: 1...100)
                    Text("c = \(c)")
                }
            }
            Spacer()
        }
        .padding()
    }
        
}

#Preview {
    RootsCalculatorView()
}
