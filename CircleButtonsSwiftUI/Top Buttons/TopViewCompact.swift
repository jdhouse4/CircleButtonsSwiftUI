//
//  TopViewCompact.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 7/7/21.
//

import SwiftUI




struct TopViewCompact: View {

    var body: some View {
        HStack(alignment: .center) {

                TopLeftViewCompact()

                Spacer()

                TopRightCompactView()

        }
    }
}




struct TopViewCompact_Previews: PreviewProvider {
    static var previews: some View {
        TopViewCompact()
    }
}
