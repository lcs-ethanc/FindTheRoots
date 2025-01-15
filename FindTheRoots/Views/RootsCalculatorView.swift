//
//  ContentView.swift
//  FindTheRoots
//
//  Created by Pak Ching Ethan Chen on 2025-01-14.
//

import SwiftUI

struct RootsCalculatorView: View {
    
    //MARK: Stored Properties
    
    //Coefficient inputs
    @State var a: Double = 0
    @State var b: Double = 0
    @State var c: Double = 0
    
    // List of prior results
    @State var priorResults: [Result] = []
    
    //MARK: Computed Properties
    //Discriminant =
    //1. Negative = 2 complex roots
    //2. 0 = 2 identical roots
    //3. Positive = 2 real roots
        var result: String{
        let discriminant = b*b - 4*a*c
        
        if discriminant < 0{
            return "No real roots"
            
        } else {
            let x1 = (-b+sqrt(discriminant))/(2*a)
            let x2 = (-b-sqrt(discriminant))/(2*a)
            return "x = \(x1.formatted(.number.precision(.fractionLength(1)))) and x = \(x2.formatted(.number.precision(.fractionLength(1))))"
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
                    Text("a = \(a.formatted(.number.precision(.fractionLength((1)))))")
                        .foregroundColor(.white)
                    Slider(value: $a, in: -10...10,step:1)
                    
                }
                VStack{
                    Text("b = \(b.formatted(.number.precision(.fractionLength((1)))))")
                        .foregroundColor(.white)
                    Slider(value: $b, in: -10...10,step:1)
                    
                }
                VStack{
                    Text("c = \(c.formatted(.number.precision(.fractionLength((1)))))")
                        .foregroundColor(.white)
                    Slider(value: $c, in: -10...10, step: 1)
                }
            } .padding(.top,10)
            
            //Output
                Text("\(result)")
                    .foregroundColor(.white)
                    .font(Font.custom("Times New Roman",
                                       size: 24.0,
                                       relativeTo: .body))
            //Button
             Button(action: {
                 //copy a,b,c,roots into Result structure
                 let latestResult = Result(a: a, b: b, c: b, roots: result)
                 //add to empty list called priorResults
                 priorResults.append(latestResult)
                 
                 
             },label:{
                 Text("Save Result")
             })
             .buttonStyle(.bordered)
             .padding()
        
            //History Label
            HStack{
                Text("History")
                    .font(.title)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Spacer()
            }
            //History List (.reversed to show in reversed order)
            List(priorResults.reversed()) { currentResult in
                HStack{
                    
                    Spacer()
                    ResultView(somePriorResult: currentResult)
                    Spacer()
                }
  
            }
            //hides the background of the scrollable list
            .scrollContentBackground(.hidden)
            Spacer()
        }
        .padding()
        .background(.black)
    }
        
}

#Preview {
    RootsCalculatorView()
}
