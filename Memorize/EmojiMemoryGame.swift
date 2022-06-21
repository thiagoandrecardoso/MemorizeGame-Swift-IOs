//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Thiago Cardoso on 17/05/22.
//

import Foundation


class EmojiMemoryGame: ObservableObject {
    
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String>{
        let emojis = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) {
            pairIndex in return emojis[pairIndex]
        }
    }
    
    
    // MARK: - Access to the model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card){
        objectWillChange.send()
        model.choose(card: card)
    }
}
