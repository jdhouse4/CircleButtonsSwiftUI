//
//  BottomViewCompact.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 7/7/21.
//

import SwiftUI




struct BottomViewCompact: View {
    var body: some View {
        VStack {

            Spacer(minLength: 10)

            HStack(alignment: .center) {

                BottomButtonsViewCompact()

            }
            .ignoresSafeArea(edges: .top)
            .ignoresSafeArea(edges: .bottom)
            .frame(height: 260, alignment: .bottom)

        }
        .frame(alignment: .bottom)
    }
}




struct BottomViewCompact_Previews: PreviewProvider {
    static var previews: some View {
        BottomViewCompact()
    }
}
