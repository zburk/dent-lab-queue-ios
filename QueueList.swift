//
//  QueueList.swift
//  DentSimLab
//
//  Created by Zachary Burk on 1/22/20.
//  Copyright © 2020 Zachary Burk. All rights reserved.
//

import SwiftUI

struct QueueList: View {
    var numberAhead = 2;
    var benchNumber = 10;

    var body: some View {
        ZStack {
            Color.PrimaryBlueColor.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("\(numberAhead) ahead of you")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                
                Text("Bench Number: \(benchNumber)")
                    .font(.title)
                    .foregroundColor(Color.white)

                Button(action: {
                    // Action data here
                }) {
                    Text("Leave Queue")
                        .fontWeight(.bold)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.white, lineWidth: 5)
                        )
                }

                Spacer()
            }
                .padding()
        }
    }
}

struct QueueList_Previews: PreviewProvider {
    static var previews: some View {
        QueueList()
    }
}
