//
//  BottomCenterRisingButton.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 6/17/21.
//

import SwiftUI




struct BottomCenterRisingButton: View {
    @EnvironmentObject var devicesButton: DevicesButton


    var body: some View {

        HStack (spacing: 5) {

            ZStack {
                Button(action: {
                    withAnimation(.easeInOut(duration: Double(CircleButton.animationFast.rawValue))) {

                        self.devicesButton.animateChildButtons.toggle()

                    }
                }) {
                    Image(systemName: "network")
                        .frame(width: CircleButton.diameter.rawValue, height: CircleButton.diameter.rawValue, alignment: .center)
                        .imageScale(.large)
                }
                .frame(alignment: .trailing)
                .zIndex(3)
                .background(CircleButtonColor.mainWithoutBackground.rawValue)
                .background(Capsule().stroke(lineWidth: 2))
                .clipShape(Circle())
                .position(x: CircleButtonHelper.positionMainButton().x, y: CircleButtonHelper.positionMainButton().y)
                //.animation(.ripple(buttonIndex: 1), value: devicesButton.animateChildButtons)

                if devicesButton.animateChildButtons {

                    Group {

                        //
                        // Button for selecting an Apple Watch.
                        //
                        Button( action: {
                            withAnimation {

                                self.devicesButton.iPadButtonPressed.toggle()

                            }

                            // Code to do something goes here

                        }) {
                            Image(systemName: "iphone")
                                .frame(width: CircleButton.diameter.rawValue, height: CircleButton.diameter.rawValue, alignment: .center)
                                .imageScale(.large)
                                .accessibility(label: Text("Select iPhone or iPad."))
                        }
                        .zIndex(2)
                        .background(CircleButtonColor.offWithoutBackground.rawValue)
                        .clipShape(Circle())
                        .background(Capsule().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition60DegreeButton())
                        .position(x: CircleButtonHelper.position60DegreeButton().x, y: CircleButtonHelper.position60DegreeButton().y)
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0), value: devicesButton.animateChildButtons)


                        //
                        // Button for using a Mac.
                        //
                        Button( action: {
                            withAnimation {

                                self.devicesButton.appleTVButtonPressed.toggle()

                            }

                            // Code to do something goes here

                        }) {
                            Image(systemName: "macpro.gen3")
                                .frame(width: CircleButton.diameter.rawValue, height: CircleButton.diameter.rawValue, alignment: .center)
                                .imageScale(.large)
                                .accessibility(label: Text("Select Macintosh computer."))
                        }
                        .zIndex(2)
                        .background(CircleButtonColor.offWithoutBackground.rawValue)
                        .clipShape(Circle())
                        .background(Capsule().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition180DegreeButton())
                        .position(x: CircleButtonHelper.position180DegreeButton().x, y: CircleButtonHelper.position180DegreeButton().y)
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0), value: devicesButton.animateChildButtons)



                        //
                        // Button for using an Apple TV.
                        //
                        Button( action: {
                            withAnimation {

                                self.devicesButton.appleTVButtonPressed.toggle()

                            }

                            // Code to do something goes here

                        }) {
                            Image(systemName: "appletv")
                                .frame(width: CircleButton.diameter.rawValue, height: CircleButton.diameter.rawValue, alignment: .center)
                                .imageScale(.large)
                                .accessibility(label: Text("Select Apple TV"))
                        }
                        .zIndex(2)
                        .background(CircleButtonColor.offWithoutBackground.rawValue)
                        .clipShape(Circle())
                        .background(Capsule().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition300DegreeButton())
                        .position(x: CircleButtonHelper.position300DegreeButton().x, y: CircleButtonHelper.position300DegreeButton().y)
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0), value: devicesButton.animateChildButtons)

                    }
                    .animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))

                }

            }
            .frame(width: CircleButtonView.widthHeight.rawValue, height: CircleButtonView.widthHeight.rawValue, alignment: .top)

        }
        .frame(width: CircleButtonView.widthHeight.rawValue, height: CircleButtonView.extendedHeight.rawValue, alignment: .bottom)
        
    }
}




struct BottomCenterRisingButton_Previews: PreviewProvider {
    static var previews: some View {
        BottomCenterRisingButton().environmentObject(DevicesButton())
    }
}
