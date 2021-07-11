//
//  BottomButtonsView.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 7/4/21.
//

import SwiftUI




struct BottomButtonsView: View {
    var body: some View {

        BottomLeftButtonView()

        Spacer(minLength: 5)

        BottomCenterRisingButton()

        Spacer(minLength: 5)

        BottomRightButtonsView()

    }
}




struct BottomButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        BottomButtonsView()
    }
}
