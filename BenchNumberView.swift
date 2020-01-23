//
//  BenchNumberView.swift
//  DentSimLab
//
//  Created by Zachary Burk on 1/22/20.
//  Copyright © 2020 Zachary Burk. All rights reserved.
//

import SwiftUI

struct BenchNumberView: View {
    @State private var benchNumber: String = "";
    
    var disableButton: Bool {
        return Int(benchNumber) == nil || Int(benchNumber)! < 0 || Int(benchNumber)! > 83
    }
    
    var buttonColor: Color {
        return disableButton ? Color.gray : Color.white
    }

    var body: some View {
        ZStack {
            Color.PrimaryBlueColor.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 20) {
                Group {
                    Text("What's your bench number?")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)

                    #if os(watchOS)
                        Picker(selection: $benchNumber, label:
                        Text("###")) {
                            ForEach(0 ..< 83) { index in
                                Text(String(index))
                            }
                        }
                    #else
                        TextField("###", text: $benchNumber)
                            .fixedSize()
                            .keyboardType(.numberPad)
                            .font(.title)
                    #endif

                    if (!disableButton) {
                        Button(action: {
                            // Action data here
                        }) {
                            Text("Go")
                                .fontWeight(.bold)
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding()
                                .foregroundColor(buttonColor)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(buttonColor, lineWidth: 5)
                                )
                        }
                    }
                }
                
                Spacer()
            }
                .padding()
        }
    }
}

struct BenchNumberView_Previews: PreviewProvider {
    static var previews: some View {
        BenchNumberView()
    }
}
