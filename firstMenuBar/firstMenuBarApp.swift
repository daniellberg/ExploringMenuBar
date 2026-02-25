//
//  firstMenuBarApp.swift
//  firstMenuBar
//
//  Created by Daniel Berg on 25/02/26.
//

import SwiftUI

@main
struct FirstMenuBarApp: App {

    var body: some Scene {
        MenuBarExtra("Demo", systemImage: "star.fill") {

            Button("Hello 👋") {
                print("Hello from menu bar")
            }

            Divider()

            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }
        }
    }
}
