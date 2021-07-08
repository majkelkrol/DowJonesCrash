//
//  ContentView.swift
//  Dow Jones Crash
//
//  Created by Majkel on 08/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var value = 50.0
    @State var alert = false
    
    var body: some View {
        
        VStack {
            VStack {
                Spacer()
                
                //Label-1
                Text("Be like a stock's snajper! \n Hit the DJ Index 💵")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(5)
            
            
                //Label-2
                Text("Your current points is: \(value)")
                    .padding()

                
                //Slider
                HStack {
                    Text("1")
                    Slider(value: $value, in: 1...35000)
                    Text("35.000")
                }
                
                Spacer()
                
                //Button
                Button(action: {
                    self.alert = true
                }, label: {
                    Text("Dow Jones Crash")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.red)
                        .cornerRadius(9)
                })
                Spacer()
            }
            
            //Bottom info-labels
            HStack {
                Spacer()
                
                Text("Start new game")
                    .padding(2)
                    .background(Color.red)
                    .cornerRadius(5)
                
                Spacer()
                
                Text("Your total points: ")
                
                Text("999")
                    .padding(2)
                    .background(Color.red)
                    .cornerRadius(5)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "info")
                })
                .font(.title)
                .foregroundColor(.black)
                
                Spacer()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}

