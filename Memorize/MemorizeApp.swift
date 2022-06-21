//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Thiago Cardoso on 08/05/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
