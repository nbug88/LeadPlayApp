//
//  imagebutton.swift
//  Which cohort are you?
//
//  Created by Akhil Naru on 2/29/20.
//  Copyright © 2020 Akhil Naru. All rights reserved.
//

import SwiftUI

struct imagebutton: View {
    
    var filename: String
    @Binding var showDetail: Bool
    
    var body: some View {
        HStack{
                ZStack {
                Button(action: {
                    self.showDetail.toggle()
                        }) {
                Image(filename)
                    .resizable()
                    .frame(width:CGFloat(100), height: CGFloat(100))
                    .scaleEffect(showDetail ? 0.8 : 1)
                    .animation(.spring())
                    }
                    .buttonStyle(PlainButtonStyle())
                    if self.showDetail {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                    }
            }
        }
    }
}

struct imagebutton_Previews: PreviewProvider {
    static var previews: some View {
        imagebutton(filename: "blepdog", showDetail: .constant(false))
    }
}
