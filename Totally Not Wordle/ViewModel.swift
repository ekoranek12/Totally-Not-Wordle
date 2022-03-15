//
//  ViewModel.swift
//  Totally Not Wordle
//
//  Created by Eddie Koranek on 3/14/22.
//

import SwiftUI


class ViewModel: ObservableObject {
    @Published var guesses: [String] = []

    @Published var correctPositions: [String] = []
    @Published var correctLetters: [String] = []

    @Published var input: String = ""
}


extension ViewModel {
    static let preview: ViewModel = {
        var preview = ViewModel()
        preview.guesses = ["TACOS", "PIZZA", "PHONE"]
        preview.correctPositions = ["A"]
        preview.correctLetters = ["E", "L", "T"]
        return preview
    }()
}
