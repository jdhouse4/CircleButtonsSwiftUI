//
//  CarButton.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 6/1/21.
//

import SwiftUI





class TranslationButtons: ObservableObject {
    @Published var showTranslationButtons: Bool             = false
    
    @Published var translateUpButtonPressed: Bool           = false
    @Published var translateForwardButtonPressed: Bool      = false
    @Published var translateStarboardButtonPressed: Bool    = false
    @Published var translatePortButtonPressed: Bool         = false
    @Published var translateAftButtonPressed: Bool          = false
    @Published var translateDownButtonPressed: Bool         = false
}
