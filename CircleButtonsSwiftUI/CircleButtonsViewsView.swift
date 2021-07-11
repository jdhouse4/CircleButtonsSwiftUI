//
//  CircleButtonsViewsView.swift
//  CircleButtonsSwiftUI
//
//  Created by James Hillhouse IV on 7/11/21.
//

import SwiftUI

struct CircleButtonsViewsView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass

    static let tag: String?  = "4Views"


    var body: some View {

        VStack {

            if horizontalSizeClass == .compact || verticalSizeClass == .compact {

                TopViewCompact()

                Spacer(minLength: 20)

                BottomViewCompact()

            } else {

                TopView()


                Spacer(minLength: 20)


                BottomView()
            }
        }
        //.background(Color(#colorLiteral(red: 0.95, green: 0.95, blue: 0.95, alpha: 1)))
    }
}




struct FourViewsView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonsViewsView()
    }
}
