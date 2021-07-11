//
//  DevicesButtons.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 6/17/21.
//

import SwiftUI




class DevicesButton: ObservableObject {
    // Top Left Buttons
    @Published var animateButtons: Bool                 = false
    @Published var animateParentButton: Bool            = false
    @Published var animateChildButtons: Bool            = false

    @Published var iPodTouchButtonPressed: Bool         = false
    @Published var appleWatchButtonPressed: Bool        = false
    @Published var iPhoneButtonPressed: Bool            = false
    @Published var iPadButtonPressed: Bool              = false
    @Published var macProButtonPressed: Bool            = false
    @Published var appleTVButtonPressed: Bool           = false
}
