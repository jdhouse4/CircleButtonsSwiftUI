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
            
            
            Spacer(minLength: 20)
            
            
            BottomView()
            
        }
        //.background(Color(#colorLiteral(red: 0.95, green: 0.95, blue: 0.95, alpha: 1)))
    }
}




struct FourViewsView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonsViewsView()
    }
}
