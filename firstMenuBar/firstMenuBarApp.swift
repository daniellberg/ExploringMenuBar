//
//  firstMenuBarApp.swift
//  firstMenuBar
//
//  Created by Daniel Berg on 25/02/26.
//

import SwiftUI
import SwiftUI

@main
struct MyApp: App {
    @State private var count = 0
    @State private var textInput: String = "What are you counting?"

    
    var body: some Scene {
        
        MenuBarExtra("My App Title", systemImage: "star.fill") {
            VStack {
                Text("Hello, Daniel! 👋🏻")
                    .font(.system(size: 14, weight: .semibold, design: .monospaced))
                    .padding()
                
                
                TextField("Enter text here", text: $textInput)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Divider()
                
                Text("Count: \(count)")
                    .font(.system(size: 14, weight: .semibold, design: .monospaced))
                    .padding()

                HStack{
                    Button("+1"){
                        count+=1
                        print(count)
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .controlSize(.large)
//                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    Button("-1"){
                        count-=1
                        print(count)
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .controlSize(.large)
//                    .background(Color.blue)
                    .cornerRadius(10)

                }
                .padding()
                

            }
        }
        .menuBarExtraStyle(.window)
    }
}
