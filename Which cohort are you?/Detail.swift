//
//  Detail.swift
//  Which cohort are you?
//
//  Created by Akhil Naru on 2/29/20.
//  Copyright © 2020 Akhil Naru. All rights reserved.
//

import SwiftUI

struct Detail: View {
    
    @ObservedObject var cohortdata = cohortData()
    @State var randomint = Int.random(in: 0..<3)
    
    var body: some View {
        VStack {
            Spacer()
            Text("You are \(self.cohortdata.cohortTitle[self.randomint])")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .lineLimit(3)
                .padding()
            Text("\(self.cohortdata.cohortDesc[self.randomint])")
                .padding()
            Spacer()
        }.onAppear(perform: roll)
    }
    
    private func roll() {
        self.randomint = Int.random(in: 0..<3)
        //print("Akhil")
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(cohortdata: cohortData())
    }
}
