//
//  KeyboardView.swift
//  Totally Not Wordle
//
//  Created by Eddie Koranek on 3/14/22.
//

import SwiftUI


struct KeyboardView: View {
    @Binding var input: String

    let row1 = ["Q","W","E","R","T","Y","U","I","O","P"]
    let row2 = ["A", "S", "D", "F", "G", "H", "J", "K", "L"]
    let row3 = ["Z", "X", "C", "V", "B", "N", "M"]

    var body: some View {
        VStack {
            HStack(spacing: 4) {
                ForEach(row1, id: \.self) { letter in
                    KeyView(input: $input, letter: letter)
                }
            }

            HStack(spacing: 4) {
                ForEach(row2, id: \.self) { letter in
                    KeyView(input: $input, letter: letter)
                }
            }

            HStack(spacing: 4) {
                Button {
                    // check word
                } label: {
                    Image(systemName: "return")
                        .font(.body)
                        .padding(12)
                        .foregroundColor(.white)
                        .background {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(.gray)
                        }
                }

                ForEach(row3, id: \.self) { letter in
                    KeyView(input: $input, letter: letter)
                }

                Button {
                    input = String(input.dropLast())
                } label: {
                    Image(systemName: "delete.backward")
                        .font(.body)
                        .padding(12)
                        .foregroundColor(.white)
                        .background {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(.gray)
                        }
                }
            }
        }
    }
}



struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView(input: .constant(""))
    }
}
