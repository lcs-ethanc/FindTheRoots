//
//  ResultView.swift
//  FindTheRoots
//
//  Created by Pak Ching Ethan Chen on 2025-01-14.
//

import SwiftUI

struct ResultView: View {
    let somePriorResult: Result
    var body: some View {
        VStack(spacing:10){
            HStack(spacing:30){
                Text("a: \(somePriorResult.a.formatted(.number.precision(.fractionLength(1))))")
                Text("b: \(somePriorResult.b.formatted(.number.precision(.fractionLength(1))))")
                Text("c: \(somePriorResult.c.formatted(.number.precision(.fractionLength(1))))")
            }
            
            Text(somePriorResult.roots)
                .font(Font.custom("Times New Roman", size: 20.0, relativeTo: .body))
        }
    }
}

#Preview {
    ResultView(somePriorResult: resultForPreviews)
}
