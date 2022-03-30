//
//  CircleButtonsViewsView.swift
//  CircleButtonsSwiftUI
//
//  Created by James Hillhouse IV on 7/11/21.
//

import SwiftUI

struct CircleButtonsViewsView: View {
    
    static let tag: String?  = "4Views"


    var body: some View {

        VStack {
            
            TopView()

            
            Spacer(minLength: 1)
            
            
            BottomView()
            
        }
        .background(Color(#colorLiteral(red: 0.05, green: 0.05, blue: 0.05, alpha: 0.9)))
    }
}




struct FourViewsView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonsViewsView()
    }
}
