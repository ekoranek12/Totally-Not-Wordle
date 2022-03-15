//
//  GuessView.swift
//  Totally Not Wordle
//
//  Created by Eddie Koranek on 3/14/22.
//

import SwiftUI


struct GuessView: View {

    var input: String


    var body: some View {
        HStack {
            ForEach(paddedInput, id: \.self) { character in
                GuessLetterView(letter: character)
            }
        }
    }


    private var paddedInput: [String] {
        let firstFive = input.appending("     ")
            .map(String.init)
            .prefix(5)

        return Array(firstFive)
    }
}


struct GuessView_Previews: PreviewProvider {
    static var previews: some View {
        GuessView(input: "ABC")
    }
}
