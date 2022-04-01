//
//  OrientationManager.swift
//  CircleButtonsSwiftUI
//
//  Created by James Hillhouse IV on 3/31/22.
//

import SwiftUI
import Combine




///
///The following code is from [Rudrank Riyam's](https://rudrank.blog/about/) blog post,
///
///[Orientation Property Wrapper in SwiftUI](https://rudrank.blog/orientation-property-wrapper-in-swiftui),
///
///which so far I love.
///

class OrientationManager: ObservableObject {
    @Published var type: UIDeviceOrientation = .unknown
    
    static let shared = OrientationManager()
    
    //: TODO: Find out what Cancellables is
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        //: TODO: Find out what is connectedScenes and a UIWindowScene
        guard let scene = UIApplication.shared.connectedScenes.first,
              let sceneDelegate = scene as? UIWindowScene else { return }
        
        let orientation = sceneDelegate.interfaceOrientation
        
        switch orientation {
        case .portrait:
            type = .portrait
        case .portraitUpsideDown:
            type = .portraitUpsideDown
        case .landscapeLeft:
            type = .landscapeLeft
        case .landscapeRight:
            type = .landscapeRight
        case .unknown:
            type = .unknown
        default: type = .unknown
        }
        
        
        //: TODO: What is .sink?
        NotificationCenter.default
            .publisher(for: UIDevice.orientationDidChangeNotification)
            .sink() { [weak self ] _ in
                self?.type = UIDevice.current.orientation
            }
            .store(in: &cancellables)
    }
}
