//
//  KeyView.swift
//  Totally Not Wordle
//
//  Created by Eddie Koranek on 3/14/22.
//

import SwiftUI


struct KeyView: View {
    @EnvironmentObject var viewModel: ViewModel
    var letter: String

    var body: some View {
        Button {
            viewModel.addLetter(letter)
        } label: {
            Text(letter)
                .font(.system(.body, design: .monospaced).bold())
                .padding(10)
                .foregroundColor(.white)
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(backgroundColor)
                }
        }
    }


    private var backgroundColor: Color {
        if viewModel.correctPositions.contains(letter) {
            return .green
        } else if viewModel.correctLetters.contains(letter) {
            return .yellow
        } else {
            return .gray
        }
    }
}



struct KeyView_Previews: PreviewProvider {
    static var previews: some View {
        KeyView(letter: "A")
            .environmentObject(ViewModel.preview)
    }
}
