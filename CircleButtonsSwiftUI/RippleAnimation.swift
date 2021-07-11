//
//  File.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 6/21/21.
//

import SwiftUI



extension Animation {
    static func ripple(buttonIndex: Int) -> Animation {
        Animation.spring(dampingFraction: 0.5)
            .speed(1.2)
            .delay(0.05 * Double(buttonIndex))

    }
}




