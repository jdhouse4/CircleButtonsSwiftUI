//
//  TopView.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 4/9/21.
//

import SwiftUI




struct TopView: View {


    var body: some View {
        HStack(alignment: .center) {

            TopLeftView()

            
            Spacer()

            
            TopRightView()
            
        }
    }
}




struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
