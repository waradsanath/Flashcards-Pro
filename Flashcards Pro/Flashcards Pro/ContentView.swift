//
//  ContentView.swift
//  Flashcards Pro
//
//  Created by Sanath Warad on 6/8/24.
//

import SwiftUI

struct FlashcardSet: Codable, Identifiable {
    var id = UUID()
    var name: String
    var questionAnswer: [String : String]
}

struct ContentView: View {
    @State var flashcards: [FlashcardSet] = [FlashcardSet(name: "New Flashcard Set", questionAnswer: ["New Question" : "New Answer"])]
    var body: some View {
        NavigationStack {
            List(flashcards) { flashcardSet in
                NavigationLink {
                    Text(flashcardSet.name)
                } label: {
                    Text(flashcardSet.name)
                }
            }
            .navigationTitle("Your Flashcards")
        }
    }
}

#Preview {
    ContentView()
}
