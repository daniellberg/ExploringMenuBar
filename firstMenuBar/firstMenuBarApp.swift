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
    @State private var textInput: String = "What are you counting?"
    
    var body: some Scene {
        
        MenuBarExtra("My App Title", systemImage: "star.fill") {
            VStack {
                Text("Hello, Daniel! 👋🏻")
                    .font(.system(size: 14, weight: .semibold, design: .monospaced))
                    .padding()
                
                Divider()
                
                TextField("Enter text here", text: $textInput)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                    .padding()
                HStack{
                    Button("+1"){
                        print("Hi!")
                    }
                    .font(.headline)
                    .foregroundColor(.white)
//                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    
                    Button("-1"){
                        print("Hi!")
                    }
                    .font(.headline)
                    .foregroundColor(.white)
//                    .background(Color.blue)
                    .cornerRadius(10)

                }
                .padding()
                

            }
        }
        .menuBarExtraStyle(.window) // Use window style for a custom view
    }
}
