//
//  DeviceOrientationManager.swift
//  CircleButtonsSwiftUI
//
//  Created by James Hillhouse IV on 4/1/22.
//

import SwiftUI
import Combine




///
/// - Authors: [Xiedem](https://developer.apple.com/forums/profile/xiedem) on Apple's Developer forum
///
/// - Date: March 31, 2021
///
/// - Remark: This version of a device orientation manager has the virtue of not only keeping tabs for when the device orienation changes, but even better, it regiters the device orientation when the app is run, unlike another example I tried.
///
///- Note: Posted on [SwiftUI - Determining Current Device and Orientation](https://developer.apple.com/forums/thread/126878)
///
/// Usage:
///     In the View you want to monitor for orientation changes, call,
///
///  `@EnvironmentObject var orientationManager: DeviceOrientationManager`
///
///     Don't forget that in the primary view, that is where this `@StateObject` for the `DeviceOrientationManager` will be instantiated, call,
///
///   `@StateObject var orientationManager = DeviceOrientationManger()`
///
///   and below the view content,
///
///   `.environmentObject(orientationManager`
///

final class DeviceOrientation: ObservableObject {
      enum Orientation {
        case portrait
        case landscape
    }
    
    
    @Published var orientation: Orientation
    
    
    private var listener: AnyCancellable?
    
    
    init() {
        orientation = UIDevice.current.orientation.isLandscape ? .landscape : .portrait
        
        listener = NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)
            .compactMap { ($0.object as? UIDevice)?.orientation }
            .compactMap { deviceOrientation -> Orientation? in
                if deviceOrientation.isPortrait {
                    return .portrait
                } else if deviceOrientation.isLandscape {
                    return .landscape
                } else {
                    return nil
                }
            }
            .assign(to: \.orientation, on: self)
    }
    
    
    deinit {
        listener?.cancel()
    }
}
