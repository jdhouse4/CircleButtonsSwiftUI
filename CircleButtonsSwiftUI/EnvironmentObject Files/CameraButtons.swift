//
//  CameraButtons.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 5/14/21.
//

import SwiftUI



class CameraButtons: ObservableObject {
    // Top Left Buttons
    @Published var cameraButton: Bool                   = false
    @Published var showCameraButtons: Bool              = false

    @Published var pilotCameraButtonPressed: Bool       = false
    @Published var aircraftCameraButtonPressed: Bool    = false
}
