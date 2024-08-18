//
//  Storage.swift
//  Flashcards Pro
//
//  Created by Sanath Warad on 17/8/24.
//

import Foundation

class Flashcards {
    @Published var flashcards: FlashcardSet
    init(flashcards: FlashcardSet) {
        self.flashcards = flashcards
    }
}
