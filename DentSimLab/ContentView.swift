//
//  ContentView.swift
//  DentSimLab
//
//  Created by Zachary Burk on 1/21/20.
//  Copyright © 2020 Zachary Burk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var show_modal: Bool = false

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Button(action: {
                self.show_modal.toggle()
            }) {
                Text("Join")
                    .fontWeight(.bold)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .foregroundColor(Color.PrimaryBlueColor)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.PrimaryBlueColor, lineWidth: 5)
                    )
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
