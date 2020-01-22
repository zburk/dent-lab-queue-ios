//
//  ContentView.swift
//  DentSimLab
//
//  Created by Zachary Burk on 1/21/20.
//  Copyright © 2020 Zachary Burk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            ButtonOutline(buttonText: "Home")

            ButtonOutline(buttonText: "Queue List")

            ButtonOutline(buttonText: "Join")
        }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonOutline: View {
    var buttonText: String = "";

    var body: some View {
        Text(buttonText)
            .fontWeight(.bold)
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(Color.PrimaryBlueColor)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.PrimaryBlueColor, lineWidth: 5)
        )
    }
}
