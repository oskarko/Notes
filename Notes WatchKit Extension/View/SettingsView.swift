//
//  SettingsView.swift
//  Notes WatchKit Extension
//
//  Created by Oscar R. Garrucho.
//  Linkedin: https://www.linkedin.com/in/oscar-garrucho/
//  Copyright © 2021 Oscar R. Garrucho. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Property
    
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    // MARK: - Function
    
    func update() {
        lineCount = Int(value)
    }
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 8) {
            // header
            HeaderView(title: "Settings")
            
            // Actual line count
            Text("Lines \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            // Slider
            Slider(value: Binding(get: { self.value },
                                  set: { (newValue) in
                                    self.value = newValue
                                    self.update()
                                  }), in: 1...4, step: 1)
                .accentColor(.accentColor)
            
        } // VStack
    }
}

// MARK: - Preview

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
