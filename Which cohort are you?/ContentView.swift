//
//  ContentView.swift
//  Which cohort are you?
//
//  Created by Akhil Naru on 2/28/20.
//  Copyright © 2020 Akhil Naru. All rights reserved.
//
// How to use custom Bindings - https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-custom-bindings

import SwiftUI

struct ContentView: View {
    
    @State private var showDetail: [Bool] = [false,false,false,true]
    @State private var showDetail1: [Bool] = [false,false,false,true]
    @State var selection: Int? = nil
    
    
    var body: some View {
        let firstImage = Binding(
            get: { self.showDetail[0] },
            set: {
                if $0 == true {
                    if let index = self.showDetail.firstIndex(of: true){
                        self.showDetail[index] = false
                    }
                }
                self.showDetail[0] = $0
        }
        )
        
        let secondImage = Binding(
            get: { self.showDetail[1] },
            set: {
                if $0 == true {
                    if let index = self.showDetail.firstIndex(of: true){
                        self.showDetail[index] = false
                    }
                }
                self.showDetail[1] = $0
        }
        )
        
        let thirdImage = Binding(
            get: { self.showDetail[2] },
            set: {
                if $0 == true {
                    if let index = self.showDetail.firstIndex(of: true){
                        self.showDetail[index] = false
                    }
                }
                self.showDetail[2] = $0
        }
        )
        
        let firstImage1 = Binding(
            get: { self.showDetail1[0] },
            set: {
                if $0 == true {
                    if let index = self.showDetail1.firstIndex(of: true){
                        self.showDetail1[index] = false
                    }
                }
                self.showDetail1[0] = $0
        }
        )
        
        let secondImage1 = Binding(
            get: { self.showDetail1[1] },
            set: {
                if $0 == true {
                    if let index = self.showDetail1.firstIndex(of: true){
                        self.showDetail1[index] = false
                    }
                }
                self.showDetail1[1] = $0
        }
        )
        
        let thirdImage1 = Binding(
            get: { self.showDetail1[2] },
            set: {
                if $0 == true {
                    if let index = self.showDetail1.firstIndex(of: true){
                        self.showDetail1[index] = false
                    }
                }
                self.showDetail1[2] = $0
        }
        )
        
        return
            NavigationView {
                ScrollView {
            VStack (alignment: .leading) {
                Text("Adopt a dog and we'll reveal which cohort you belong to!")
                    .font(.largeTitle)
                    .padding()
                    .lineLimit(4)
                Text("This is your pupper of truth.")
                    .font(.headline)
                    .padding(.leading, 15)
                Text("By 2019 Lead Facils")
                    .font(.headline)
                    .padding(.leading, 15)
                    .padding(.bottom, 40)
                VStack (alignment: .leading) {
                    Text("Pick a Pup")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding(.leading, 20)
                    HStack {
                        Spacer()
                        imagebutton(filename: "blepdog", showDetail: firstImage)
                        imagebutton(filename: "shydog", showDetail: secondImage)
                        imagebutton(filename: "burgerdog", showDetail: thirdImage)
                        Spacer()
                    }
                    .padding()
                    
                    Text("Pick a Dog Bed")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding(.leading, 20)
                    HStack {
                        Spacer()
                        imagebutton(filename: "cartdog", showDetail: firstImage1)
                        imagebutton(filename: "dopeydog", showDetail: secondImage1)
                        imagebutton(filename: "happydog", showDetail: thirdImage1)
                        Spacer()
                    }
                    .padding()
                    
                    NavigationLink(destination: Detail()) {
                        submit()
                    }
                }
                Spacer()
                .navigationBarTitle("Which Cohort?")
        }
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            //.previewDevice(PreviewDevice(rawValue: "iPhone 8"))
    }
}


struct submit: View {
    var body: some View {
        HStack {
            Spacer()
            HStack {
                Image(systemName: "checkmark.circle.fill")
                Text("Submit")
            }
            .foregroundColor(Color.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(5)
            Spacer()
        }
}
}
