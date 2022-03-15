//
//  ContentView.swift
//  Totally Not Wordle
//
//  Created by Eddie Koranek on 3/14/22.
//

import SwiftUI

struct ContentView: View {
    @State private var input: String = "Hello "

    var body: some View {
        VStack {
            Spacer()
            GameBoardView()
            Spacer()

            KeyboardView(input: $input)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
