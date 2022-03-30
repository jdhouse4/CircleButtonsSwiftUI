//
//  BottomRightButtonsCompactView.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 6/23/21.
//

import SwiftUI




struct BottomRightButtonsCompactView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass

    @EnvironmentObject var rotationButtons: RotationButtons

    let buttonAnimationTime = 0.25


    var body: some View {
        HStack (spacing: 5) {

            ZStack {
                Circle()
                    .fill(CircleButtonColor.background.rawValue)
                    .zIndex(-1)
                    .clipShape(Circle())
                    .position(
                        x: horizontalSizeClass == .compact ? CircleButton.halfWidthHeightCompact.rawValue : CircleButton.halfWidthHeightCompact.rawValue,
                        y: horizontalSizeClass == .compact ? CircleButton.halfWidthHeightCompact.rawValue : CircleButton.halfWidthHeightCompact.rawValue)



                //
                // Access Rotation Buttons
                //
                Button(action: {
                    withAnimation(.easeInOut(duration: Double(CircleButton.animationFast.rawValue))) {

                        self.rotationButtons.showRotationButtons.toggle()

                    }
                }) {
                    Image(systemName: "rotate.3d")
                        .imageScale(.large)
                }
                .zIndex(3)
                .frame(
                    width: CircleButton.diameterCompact.rawValue,
                    height: CircleButton.diameterCompact.rawValue,
                    alignment: .center)
                .background(CircleButtonColor.main.rawValue)
                .clipShape(Circle())
                .background(Circle().stroke(Color.blue, lineWidth: 1))
                .position(
                    x: CircleButtonHelper.positionMainButtonCompact().x,
                    y: CircleButtonHelper.positionMainButtonCompact().y)
                .animation(.easeInOut(duration: self.buttonAnimationTime).delay(0.0))


                if rotationButtons.showRotationButtons {

                    Group {

                        //
                        // Button for Pitching up.
                        //
                        Button( action: {
                            withAnimation {

                                self.rotationButtons.pitchUpButtonPressed.toggle()

                            }

                            // Code to do something goes here

                        }) {
                            Image(systemName: "arrow.up")
                                .imageScale(.large)
                                .accessibility(label: Text("Hailing a ride."))
                        }
                        .zIndex(2)
                        .frame(
                            width: CircleButton.diameterCompact.rawValue,
                            height: CircleButton.diameterCompact.rawValue,
                            alignment: .center)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Circle().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition0DegreeButtonCompact())
                        .position(
                            x: CircleButtonHelper.position0DegreeButtonCompact().x,
                            y: CircleButtonHelper.position0DegreeButtonCompact().y)
                        .animation(.ripple(buttonIndex: 2), value: rotationButtons.showRotationButtons)
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))



                        //
                        // Button for rolling starboard.
                        //
                        Button( action: {
                            withAnimation {

                                self.rotationButtons.rollStarboardButtonPressed.toggle()

                            }

                            // Code to do something goes here

                        }) {
                            Image(systemName: "arrow.clockwise")
                                .imageScale(.large)
                                .accessibility(label: Text("Rolling starboard."))
                        }
                        .zIndex(2)
                        .frame(
                            width: CircleButton.diameterCompact.rawValue,
                            height: CircleButton.diameterCompact.rawValue,
                            alignment: .center)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Circle().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition60DegreeButtonCompact())
                        .position(
                            x: CircleButtonHelper.position60DegreeButtonCompact().x,
                            y: CircleButtonHelper.position60DegreeButtonCompact().y)
                        .animation(.ripple(buttonIndex: 2), value: rotationButtons.showRotationButtons)
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))



                        //
                        // Button for yawing starboard.
                        //
                        Button( action: {
                            withAnimation {

                                self.rotationButtons.yawStarboardButtonPressed.toggle()

                            }

                            // Code to do something goes here

                        }) {
                            Image(systemName: "arrow.right")
                                .imageScale(.large)
                                .accessibility(label: Text("Yawing starboard."))
                        }
                        .zIndex(2)
                        .frame(
                            width: CircleButton.diameterCompact.rawValue,
                            height: CircleButton.diameterCompact.rawValue,
                            alignment: .center)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Circle().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition120DegreeButtonCompact())
                        .position(
                            x: CircleButtonHelper.position120DegreeButtonCompact().x,
                            y: CircleButtonHelper.position120DegreeButtonCompact().y)
                        .animation(.ripple(buttonIndex: 2), value: rotationButtons.showRotationButtons)
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))



                        //
                        // Button for pitching down.
                        //
                        Button( action: {
                            withAnimation {

                                self.rotationButtons.pitchDownButtonPressed.toggle()

                            }

                            // Code to do something goes here

                        }) {
                            Image(systemName: "arrow.down")
                                .imageScale(.large)
                                .accessibility(label: Text("Pitching down."))
                        }
                        .zIndex(2)
                        .frame(
                            width: CircleButton.diameterCompact.rawValue,
                            height: CircleButton.diameterCompact.rawValue,
                            alignment: .center)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Circle().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition180DegreeButtonCompact())
                        .position(
                            x: CircleButtonHelper.position180DegreeButtonCompact().x,
                            y: CircleButtonHelper.position180DegreeButtonCompact().y)
                        //.animation(.ripple(buttonIndex: 2))
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))



                        //
                        // Button for yawing port.
                        //
                        Button( action: {
                            withAnimation {

                                self.rotationButtons.yawPortButtonPressed.toggle()

                            }

                            // Code to do something goes here

                        }) {
                            Image(systemName: "arrow.left")
                                .imageScale(.large)
                                .accessibility(label: Text("Yawing port."))
                        }
                        .zIndex(2)
                        .frame(
                            width: CircleButton.diameterCompact.rawValue,
                            height: CircleButton.diameterCompact.rawValue,
                            alignment: .center)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Circle().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition240DegreeButtonCompact())
                        .position(
                            x: CircleButtonHelper.position240DegreeButtonCompact().x,
                            y: CircleButtonHelper.position240DegreeButtonCompact().y)
                        //.animation(.ripple(buttonIndex: 2))
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))



                        //
                        // Button for rolling port.
                        //
                        Button( action: {
                            withAnimation {

                                self.rotationButtons.yawPortButtonPressed.toggle()

                            }

                            // Code to do something goes here

                        }) {
                            Image(systemName: "arrow.counterclockwise")
                                .imageScale(.large)
                                .accessibility(label: Text("Rolling port."))
                        }
                        .zIndex(2)
                        .frame(
                            width: CircleButton.diameterCompact.rawValue,
                            height: CircleButton.diameterCompact.rawValue,
                            alignment: .center)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Circle().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition300DegreeButtonCompact())
                        .position(
                            x: CircleButtonHelper.position300DegreeButtonCompact().x,
                            y: CircleButtonHelper.position300DegreeButtonCompact().y)
                        //.animation(.ripple(buttonIndex: 2))
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))

                    }
                    .animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))

                }

            }
            .frame(width: CircleButton.widthHeightCompact.rawValue, height: CircleButton.widthHeightCompact.rawValue, alignment: .bottomTrailing)
        }
        .frame(width: CircleButton.widthHeightCompact.rawValue, height: CircleButton.extendedHeightCompact.rawValue, alignment: .bottomTrailing)
        .padding(.init(top: 5, leading: 5, bottom: 0, trailing: 5))
    }
}




struct BottomRightButtonsCompactView_Previews: PreviewProvider {
    static var previews: some View {
        BottomRightButtonsCompactView().environmentObject(RotationButtons())
    }
}
