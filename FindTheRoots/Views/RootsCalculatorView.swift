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
    var firstx: Double{
        return (-b+sqrt(b*b-4*a*c))/(2*a)
        
    }
    var secondx: Double{
        return (-b-sqrt(b*b-4*a*c))/(2*a)
        
    }

    var body: some View {
        VStack {
            HStack {
               
                Text("Find the Roots")
                    .font(.system(size:40))
                    .foregroundColor(.white)
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
                    Text("a = \(a)")
                        .foregroundColor(.white)
                    Slider(value: $a, in: 1...100)
                    
                }
                VStack{
                    Text("b = \(b)")
                        .foregroundColor(.white)
                    Slider(value: $b, in: 1...100)
                    
                }
                VStack{
                    Text("c = \(c)")
                        .foregroundColor(.white)
                    Slider(value: $c, in: 1...100)
                }
            } .padding(.top,10)
            
            Text("x = \(firstx)")
                .foregroundColor(.white)
            Spacer()
        }
        .padding()
        .background(.black)
    }
        
}

#Preview {
    RootsCalculatorView()
}
