//
//  BottomButtonsView.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 7/4/21.
//

import SwiftUI




struct BottomButtonsView: View {
    var body: some View {

        ZStack {
            VStack {

                HStack {

                    Spacer()

                    BottomCenterRisingButton()

                    Spacer()
                }

            }
            .zIndex(3)
            .frame(alignment: .center)

            HStack {

                BottomLeftButtonView()

                Spacer(minLength: 1)

                BottomRightButtonsView ()
            }
            .zIndex(2)
        }
        //.background(Color(#colorLiteral(red: 0.05, green: 0.95, blue: 0.05, alpha: 1)))
    }
}




struct BottomButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        BottomButtonsView()
    }
}
