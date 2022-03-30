//
//  BottomCenterRisingButton.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 6/17/21.
//

import SwiftUI




struct BottomCenterRisingButton: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass

    @EnvironmentObject var devicesButton: DevicesButton


    var body: some View {

        HStack (spacing: 5) {

            ZStack {
                Button(action: {
                    
                    if horizontalSizeClass == .compact {

                        // Deploy buttons
                        if self.devicesButton.animateButtons == false {
                            print("Deploying main button")

                            self.devicesButton.animateParentButton.toggle()// = true

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

                                self.devicesButton.animateParentButton.toggle()// = false
                            }

                        }

                        self.devicesButton.animateButtons.toggle()

                    } else {
                        
                        withAnimation(.easeInOut(duration: Double(CircleButton.animationFast.rawValue))) {

                            self.devicesButton.animateChildButtons.toggle()
                            print("Non compact dispaly, animateChildButtons: \(self.devicesButton.animateChildButtons)")
                            
                            self.devicesButton.animateParentButton.toggle()
                            print("Non compact dispaly, animateParentButton: \(self.devicesButton.animateParentButton)")

                            self.devicesButton.animateButtons.toggle()
                            print("Non compact dispaly, animateButtons: \(self.devicesButton.animateButtons)\n")
                        }
                    }
                }) {
                    Image(systemName: "network")
                        .imageScale(.large)
                }
                .zIndex(3)
                .frame(
                    width: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue : CircleButton.diameter.rawValue,
                    height: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue : CircleButton.diameter.rawValue,
                    alignment: .center)
                .background(CircleButtonColor.mainWithoutBackground.rawValue)
                .background(Circle().stroke(lineWidth: 2))
                .clipShape(Circle())
                .position(
                    x: horizontalSizeClass == .compact ? ( self.devicesButton.animateParentButton ? CircleButton.halfWidthHeightCompact.rawValue : CircleButton.halfWidthHeightCompact.rawValue) : CircleButtonHelper.positionMainButton().x,
                    y: horizontalSizeClass == .compact ? ( self.devicesButton.animateParentButton ? CircleButton.centerButtonTopPositionCompact.rawValue : CircleButton.centerButtonBottomPositionCompact.rawValue ) : CircleButtonHelper.positionMainButton().y
                    )
                /*.position(
                    x: self.devicesButton.animateParentButton && horizontalSizeClass == .compact ? CircleButtonHelper.positionMainButtonCompact().x : CircleButtonHelper.positionMainButton().x,
                    y: self.devicesButton.animateParentButton && horizontalSizeClass == .compact ? CircleButtonHelper.positionMainButtonCompact().y : CircleButtonHelper.positionMainButton().y)
                 */
                .animation(.ripple(buttonIndex: 1), value: devicesButton.animateParentButton)

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
                                .imageScale(.large)
                                .accessibility(label: Text("Select iPhone or iPad."))
                        }
                        .zIndex(2)
                        .frame(
                            width: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue :  CircleButton.diameter.rawValue,
                            height: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue : CircleButton.diameter.rawValue,
                            alignment: .center)
                        .background(CircleButtonColor.offWithoutBackground.rawValue)
                        .clipShape(Circle())
                        .background(Circle().stroke(Color.blue, lineWidth: 1))
                        .transition(horizontalSizeClass == .compact ? CircleButtonHelper.transition60DegreeButtonCompact() : CircleButtonHelper.transition60DegreeButton())
                        .position(
                            x: horizontalSizeClass == .compact ? CircleButtonHelper.position60DegreeRisingButtonCompact().x : CircleButtonHelper.position60DegreeButton().x,
                            y: horizontalSizeClass == .compact ? CircleButtonHelper.position60DegreeRisingButtonCompact().y : CircleButtonHelper.position60DegreeButton().y)
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
                                .imageScale(.large)
                                .accessibility(label: Text("Select Macintosh computer."))
                        }
                        .zIndex(2)
                        .frame(
                            width: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue :  CircleButton.diameter.rawValue,
                            height: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue : CircleButton.diameter.rawValue,
                            alignment: .center)
                        .background(CircleButtonColor.offWithoutBackground.rawValue)
                        .clipShape(Circle())
                        .background(Circle().stroke(Color.blue, lineWidth: 1))
                        .transition(horizontalSizeClass == .compact ? CircleButtonHelper.transition180DegreeButtonCompact() : CircleButtonHelper.transition180DegreeButton())
                        .position(
                            x: horizontalSizeClass == .compact ? CircleButtonHelper.position180DegreeRisingButtonCompact().x : CircleButtonHelper.position180DegreeButton().x,
                            y: horizontalSizeClass == .compact ? CircleButtonHelper.position180DegreeRisingButtonCompact().y : CircleButtonHelper.position180DegreeButton().y)
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
                                .imageScale(.large)
                                .accessibility(label: Text("Select Apple TV"))
                        }
                        .zIndex(2)
                        .frame(
                            width: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue :  CircleButton.diameter.rawValue,
                            height: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue : CircleButton.diameter.rawValue,
                            alignment: .center)
                        .background(CircleButtonColor.offWithoutBackground.rawValue)
                        .clipShape(Circle())
                        .background(Circle().stroke(Color.blue, lineWidth: 1))
                        .transition(horizontalSizeClass == .compact ? CircleButtonHelper.transition300DegreeButtonCompact() : CircleButtonHelper.transition300DegreeButton())
                        .position(
                            x: horizontalSizeClass == .compact ? CircleButtonHelper.position300DegreeRisingButtonCompact().x : CircleButtonHelper.position300DegreeButton().x,
                            y: horizontalSizeClass == .compact ? CircleButtonHelper.position300DegreeRisingButtonCompact().y : CircleButtonHelper.position300DegreeButton().y)
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0), value: devicesButton.animateChildButtons)

                    }
                    //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))

                }

            }
            .frame(
                width: horizontalSizeClass == .compact ? CircleButton.widthHeightCompact.rawValue : CircleButton.widthHeight.rawValue,
                height: horizontalSizeClass == .compact ? CircleButton.extendedHeightCompact.rawValue : CircleButton.widthHeight.rawValue,
                alignment: .top)
            .animation(.ripple(buttonIndex: 1), value: devicesButton.animateChildButtons)
        }
        .frame(
            width: horizontalSizeClass == .compact ? CircleButton.widthHeightCompact.rawValue : CircleButton.widthHeight.rawValue,
            height: horizontalSizeClass == .compact ? CircleButton.extendedHeightCompact.rawValue : CircleButton.widthHeight.rawValue,
            alignment: .bottom)
        
    }
}




struct BottomCenterRisingButton_Previews: PreviewProvider {
    static var previews: some View {
        BottomCenterRisingButton().environmentObject(DevicesButton())
    }
}
