//
//  GameBoardView.swift
//  Totally Not Wordle
//
//  Created by Eddie Koranek on 3/14/22.
//

import SwiftUI


struct GameBoardView: View {
    @EnvironmentObject var viewModel: ViewModel


    var body: some View {
        VStack {
            ForEach(guesses, id: \.self) { guess in
                GuessView(input: guess)
            }
        }
    }


    private var guesses: [String] {
        let allInput = viewModel.guesses + [viewModel.input]
        let padded = allInput.padded(length: 6, padding: " ")
        return padded
    }
}



struct GameBoardView_Previews: PreviewProvider {
    static var previews: some View {
        GameBoardView()
            .environmentObject(ViewModel.preview)
    }
}



extension Array {
    func padded(length: Int, padding: Element) -> Array {
        let allItems = self + Array(repeating: padding, count: length)
        let trimmed = allItems.prefix(length)
        return Array(trimmed)
    }
}
