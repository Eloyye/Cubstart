//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue: Double = 50
    @State private var isExactMode: Bool = true
    
    func checkCorrect() {
        
    }
    
    var body: some View {
        VStack(){
            HStack() {
                VStack() {
                    Text("High Score")
                    Text("1")
                }.padding(.leading, 20)
                    .padding(.top, 20)
                Spacer()
                
                VStack() {
                    Text("Current Level")
                    Text("1")
                }
                .padding(.trailing, 20)
                .padding(.top, 20)
            }
            Spacer()
            VStack() {
                Text("Move the Slider to:")
                    .font(.system(size: 36))
                Text(String(Int(sliderValue)))
                    .font(.system(size: 36))
                Slider(value: $sliderValue, in: 0...100)
                    .frame(width: 350)
                    .padding()
                Button("Check", action: checkCorrect)
                    .padding()
                
            }.padding(.bottom, 200)
            VStack() {
                Text("Exact Mode?")
                Toggle("",isOn: $isExactMode)
                    .frame(maxWidth: 1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
