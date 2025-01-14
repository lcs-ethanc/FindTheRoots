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
    var result: String{
        let discriminant = b*b - 4*a*c
        
        if discriminant < 0{
            return "No real roots"
            
        } else {
            let x1 = (-b+sqrt(discriminant))/(2*a)
            let x2 = (-b-sqrt(discriminant))/(2*a)
            return "x = \(String(format: "%.1f", x1))and x = \(String(format: "%.1f", x2))"
        }
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
                    Text("a = \(String(format: "%.1f", a))")
                        .foregroundColor(.white)
                    Slider(value: $a, in: -10...10,step:1)
                    
                }
                VStack{
                    Text("b = \(String(format: "%.1f", b))")
                        .foregroundColor(.white)
                    Slider(value: $b, in: -10...10,step:1)
                    
                }
                VStack{
                    Text("c = \(String(format: "%.1f", c))")
                        .foregroundColor(.white)
                    Slider(value: $c, in: -10...10, step: 1)
                }
            } .padding(.top,10)
            HStack{
                Text("x ≈ \(firstx) and x ≈ \(secondx)")
                    .foregroundColor(.white)
                    .font(Font.custom("Times New Roman",
                                       size: 24.0,
                                       relativeTo: .body))
            }
            Spacer()
        }
        .padding()
        .background(.black)
    }
        
}

#Preview {
    RootsCalculatorView()
}
