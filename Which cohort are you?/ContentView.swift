//
//  ContentView.swift
//  Which cohort are you?
//
//  Created by Akhil Naru on 2/28/20.
//  Copyright © 2020 Akhil Naru. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            Text("Adopt A Dog And We'll Reveal Which cohort you belong to!")
            Text("This is your pupper of truth.")
            Text("By 2019 Lead Facils")
            Text("Pick a Pup")
            imagebutton()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
