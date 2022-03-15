//
//  KeyView.swift
//  Totally Not Wordle
//
//  Created by Eddie Koranek on 3/14/22.
//

import SwiftUI


struct KeyView: View {
    @Binding var input: String
    var letter: String

    var body: some View {
        Button {
            input.append(letter)
        } label: {
            Text(letter)
                .font(.system(.body, design: .monospaced))
                .padding(10)
                .foregroundColor(.white)
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.gray)
                }
        }
    }
}



struct KeyView_Previews: PreviewProvider {
    static var previews: some View {
        KeyView(input: .constant(""), letter: "A")
    }
}
