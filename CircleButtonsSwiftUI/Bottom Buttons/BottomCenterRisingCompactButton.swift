//
//  BottomCenterRisingCompactButton.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 7/2/21.
//

import SwiftUI




struct BottomCenterRisingCompactButton: View {

    @EnvironmentObject var devicesButton: DevicesButton


    var body: some View {

        HStack (spacing: 5) {

            ZStack {
                Button(action: {
                    withAnimation(.easeInOut(duration: Double(CircleButton.animationFast.rawValue))) {

                        // Deploy buttons
                        if self.devicesButton.animateButtons == false {
                            print("Deploying main button")

                            self.devicesButton.animateParentButton = true

                            DispatchQueue.main.asyncAfter(deadline: .now() + Double(CircleButton.animationFast.rawValue)) {
                                print("Deploying device buttons")
                                self.devicesButton.animateChildButtons.toggle()
                            }

                        }

                        // Retract Buttons
                        if self.devicesButton.animateButtons == true {
                            print("Retracting device buttons")
                            self.devicesButton.animateChildButtons.toggle()

                            DispatchQueue.main.asyncAfter(deadline: .now() + Double(CircleButton.animationFast.rawValue)) {
                                print("Retracting main button")

                                self.devicesButton.animateParentButton = false
                            }

                        }

                        self.devicesButton.animateButtons.toggle()

                    }
                }) {
                    Image(systemName: "network")
                        .frame(width: CircleButton.diameterCompact.rawValue, height: CircleButton.diameterCompact.rawValue, alignment: .center)
                        .imageScale(.large)
                }
                .frame(alignment: .trailing)
                .zIndex(3)
                .background(CircleButtonColor.mainWithoutBackground.rawValue)
                .background(Capsule().stroke(lineWidth: 2))
                .clipShape(Circle())
                .position(x: self.devicesButton.animateParentButton ? CircleButtonView.halfWidthHeightCompact.rawValue : CircleButtonView.halfWidthHeightCompact.rawValue, y: self.devicesButton.animateParentButton ? CircleButtonView.centerButtonTopPositionCompact.rawValue : CircleButtonView.centerButtonBottomPositionCompact.rawValue)
                .animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))
                //.animation(.ripple(buttonIndex: 1))


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
                                .frame(width: CircleButton.diameterCompact.rawValue, height: CircleButton.diameterCompact.rawValue, alignment: .center)
                                .imageScale(.large)
                                .accessibility(label: Text("Select iPhone or iPad."))
                        }
                        .zIndex(2)
                        .background(CircleButtonColor.offWithoutBackground.rawValue)
                        .clipShape(Circle())
                        .background(Capsule().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition60DegreeButtonCompact())
                        .position(x: CircleButtonHelper.position60DegreeRisingButtonCompact().x, y: CircleButtonHelper.position60DegreeRisingButtonCompact().y)
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))



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
                                .frame(width: CircleButton.diameterCompact.rawValue, height: CircleButton.diameterCompact.rawValue, alignment: .center)
                                .imageScale(.large)
                                .accessibility(label: Text("Select Macintosh computer."))
                        }
                        .zIndex(2)
                        .background(CircleButtonColor.offWithoutBackground.rawValue)
                        .clipShape(Circle())
                        //.background(Capsule().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition180DegreeButtonCompact())
                        .position(x: CircleButtonHelper.position180DegreeRisingButtonCompact().x, y: CircleButtonHelper.position180DegreeRisingButtonCompact().y)
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))



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
                                .frame(width: CircleButton.diameterCompact.rawValue, height: CircleButton.diameterCompact.rawValue, alignment: .center)
                                .imageScale(.large)
                                .accessibility(label: Text("Select Apple TV"))
                        }
                        .zIndex(2)
                        .background(CircleButtonColor.offWithoutBackground.rawValue)
                        .clipShape(Circle())
                        .background(Capsule().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition300DegreeButtonCompact())
                        .position(x: CircleButtonHelper.position300DegreeRisingButtonCompact().x, y: CircleButtonHelper.position300DegreeRisingButtonCompact().y)
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))
                    }
                    .animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))

                }

            }
            .frame(width: CircleButtonView.widthHeightCompact.rawValue, height: CircleButtonView.extendedHeightCompact.rawValue, alignment: .top)

        }
        .frame(width: CircleButtonView.widthHeightCompact.rawValue, height: CircleButtonView.extendedHeightCompact.rawValue, alignment: .bottom)
    }
}




struct BottomCenterRisingCompactButton_Previews: PreviewProvider {
    static var previews: some View {
        BottomCenterRisingCompactButton().environmentObject(DevicesButton())
    }
}
