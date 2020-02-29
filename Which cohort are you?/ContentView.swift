//
//  ContentView.swift
//  Which cohort are you?
//
//  Created by Akhil Naru on 2/28/20.
//  Copyright © 2020 Akhil Naru. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    //@State private var showDetailq1a: Bool = false
    //@State private var showDetailq1b: Bool = false
    @State private var showDetail: [Bool] = [false,false,false,false,false,false,false,false,false,true]
    
    var body: some View {
        VStack {
            Text("Adopt A Dog And We'll Reveal Which cohort you belong to!")
            Text("This is your pupper of truth.")
            Text("By 2019 Lead Facils")
            Text("Pick a Pup")
//            imagebutton(filename: "blepdog", showDetail: $showDetailq1a)
//            imagebutton(filename: "shydog", showDetail: $showDetailq1b)
            imagebutton(filename: "blepdog", showDetail: $showDetail[0])
            imagebutton(filename: "shydog", showDetail: $showDetail[1])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
