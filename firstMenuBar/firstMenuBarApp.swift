//
//  firstMenuBarApp.swift
//  firstMenuBar
//
//  Created by Daniel Berg on 25/02/26.
//
import SwiftUI

@main
struct MyApp: App {
    @State private var count = 0
    @State private var isEnabled = false
    @State private var textInput: String = "What are you counting?"

    var body: some Scene {
        MenuBarExtra("My App", systemImage: "star.fill") {
            VStack(spacing: 10) {
                Text("Hello, Daniel! 👋🏻")
                    .font(.system(size: 14, weight: .semibold, design: .monospaced))

                HStack{
                    TextField("Enter text here", text: $textInput)
                        .disabled(isEnabled)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.center)
                        .frame(width: 200)
                    
                    Button(action: {
                        isEnabled.toggle()
                            }) {
                                Image(systemName: isEnabled ? "lock.fill" : "lock.open.fill")
                                    .padding(5)
                            }
                            .buttonStyle(PlainButtonStyle())
                    
                }
                Divider()

                Text("Count: \(count)")
                    .font(.system(size: 14, weight: .semibold, design: .monospaced))

                HStack(spacing: 10) {
                    Button("+1") {
                        count += 1
                        print(count)
                    }
                    .frame(width: 50, height: 30)
                    .foregroundColor(.white)
                    .cornerRadius(6)

                    Button("-1") {
                        count -= 1
                        print(count)
                    }
                    .frame(width: 50, height: 30)
                    .foregroundColor(.white)
                    .cornerRadius(6)
                }
            }
            .padding(10)
        }
        .menuBarExtraStyle(.window)
    }
}
