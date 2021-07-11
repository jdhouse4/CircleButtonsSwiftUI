//
//  SettingsButtons.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 6/21/21.
//

import SwiftUI




class SettingsButtons: ObservableObject {
    @Published var showSettingsButtons: Bool            = false

    @Published var settingsButtonPressed: Bool          = false
    @Published var userInfoButtonPressed: Bool          = false
    @Published var helpButtonPressed: Bool              = false
}
