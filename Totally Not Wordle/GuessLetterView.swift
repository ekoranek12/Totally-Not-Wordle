//
//  GuessLetterView.swift
//  Totally Not Wordle
//
//  Created by Eddie Koranek on 3/14/22.
//

import SwiftUI


struct GuessLetterView: View {
    var letter: String

    var body: some View {
        ZStack {
            Rectangle()
                .stroke(.secondary)
                .frame(width: 60, height: 60)

            Text(letter)
                .font(.system(.largeTitle, design: .rounded).bold())
        }
    }
}



struct GuessLetterView_Previews: PreviewProvider {
    static var previews: some View {
        GuessLetterView(letter: "T")
    }
}
