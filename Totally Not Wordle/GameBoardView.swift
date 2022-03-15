//
//  GameBoardView.swift
//  Totally Not Wordle
//
//  Created by Eddie Koranek on 3/14/22.
//

import SwiftUI


struct GameBoardView: View {
    var guesses: [String] = []

    var body: some View {
        VStack {
            ForEach(guesses.padded(length: 6, padding: " "), id: \.self) { guess in
                GuessView(input: guess)
            }
        }
    }
}



struct GameBoardView_Previews: PreviewProvider {
    static var previews: some View {
        GameBoardView(guesses: ["TACOS", "PIZZA", "PHONE"])
    }
}



extension Array {
    func padded(length: Int, padding: Element) -> Array {
        let allItems = self + Array(repeating: padding, count: length)
        let trimmed = allItems.prefix(length)
        return Array(trimmed)
    }
}
