//
//  Orientation.swift
//  CircleButtonsSwiftUI
//
//  Created by James Hillhouse IV on 3/31/22.
//

import SwiftUI




@propertyWrapper struct Orientation: DynamicProperty {
    @StateObject private var orientationManager = OrientationManager.shared
    
    var wrappedValue: UIDeviceOrientation {
        orientationManager.type
    }
}
