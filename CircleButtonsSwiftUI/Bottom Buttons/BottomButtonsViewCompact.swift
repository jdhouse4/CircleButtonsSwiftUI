//
//  BottomButtonsViewCompact.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 7/2/21.
//

import SwiftUI




struct BottomButtonsViewCompact: View {
    var body: some View {

        ZStack {
            VStack {

                HStack {

                    Spacer()

                    BottomCenterRisingCompactButton()

                    Spacer()
                }

            }
            .zIndex(3)
            .frame(alignment: .center)

            HStack {

                BottomLeftButtonCompactView()

                Spacer(minLength: 5)

                BottomRightButtonsCompactView ()
            }
            .zIndex(2)
        }
    }
}




struct BottomButtonsViewCompact_Previews: PreviewProvider {
    static var previews: some View {
        BottomButtonsViewCompact()
    }
}
