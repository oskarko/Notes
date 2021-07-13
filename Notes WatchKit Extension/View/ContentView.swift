//
//  ContentView.swift
//  Notes WatchKit Extension
//
//  Created by Oscar R. Garrucho.
//  Linkedin: https://www.linkedin.com/in/oscar-garrucho/
//  Copyright © 2021 Oscar R. Garrucho. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""
    
    // MARK: - Function
    
    func save() {
        dump(notes)
    }
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 6) {
                TextField("Add New Note", text: $text)
                
                Button(action: {
                    // 1. Only run the action when the text is not empty
                    guard text.isEmpty == false else { return }
                    
                    // 2. Create a new note item and init it with the text value
                    let note = Note(id: UUID(), text: text)
                    
                    // 3. Add the new note to the notes array
                    notes.append(note)
                    
                    // 4. Make the text field empty
                    text = ""
                    
                    // 5. Save the notes (function)
                    save()
                }, label: {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 42, weight: .semibold))
                })
                .fixedSize()
                .buttonStyle(PlainButtonStyle())
                .foregroundColor(.accentColor)
            } // HStack
            
            Spacer()
            
            Text("\(notes.count)")
        } // VStack
        .navigationTitle("Notes")
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
