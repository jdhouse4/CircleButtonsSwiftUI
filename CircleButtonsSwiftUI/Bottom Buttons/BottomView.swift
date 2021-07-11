//
//  BottomView.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 4/12/21.
//

import SwiftUI




struct BottomView: View {
    //@State private var orientation = UIDeviceOrientation.unknown

    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass



    var body: some View {
        VStack {

            Spacer(minLength: 10)

            HStack(alignment: .center) {

                BottomButtonsView()

            }
            .ignoresSafeArea(edges: .top)
            .ignoresSafeArea(edges: .bottom)
            .frame(height: 260, alignment: .bottom)

        }
        .frame(alignment: .bottom)
        //.background(Color.yellow)
    }
}




struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView()
    }
}
