//
//  BottomRightButtonsView.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 6/6/21.
//

import SwiftUI




struct BottomRightButtonsView: View {
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
                        x: horizontalSizeClass == .compact ? CircleButton.halfWidthHeightCompact.rawValue : CircleButton.halfWidthHeight.rawValue,
                        y: horizontalSizeClass == .compact ? CircleButton.halfWidthHeightCompact.rawValue : CircleButton.halfWidthHeight.rawValue)



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
                    width: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue : CircleButton.diameter.rawValue,
                    height: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue : CircleButton.diameter.rawValue,
                    alignment: .center)
                .background(CircleButtonColor.main.rawValue)
                .clipShape(Circle())
                .background(Capsule().stroke(Color.blue, lineWidth: 1))
                .position(
                    x: horizontalSizeClass == .compact ? CircleButtonHelper.positionMainButtonCompact().x : CircleButtonHelper.positionMainButton().x,
                    y: horizontalSizeClass == .compact ? CircleButtonHelper.positionMainButtonCompact().x : CircleButtonHelper.positionMainButton().y)


                if rotationButtons.showRotationButtons {

                    Group {
                        
                        //
                        // Button for pitching up.
                        //
                        Button( action: {
                            withAnimation {
                                
                                self.rotationButtons.pitchUpButtonPressed.toggle()
                                
                            }
                            
                            // Code to do something goes here
                            
                        }) {
                            Image(systemName: "arrow.up")
                                .imageScale(.large)
                                .accessibility(label: Text("Pitching up."))
                        }
                        .zIndex(2)
                        .frame(
                            width: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue :  CircleButton.diameter.rawValue,
                            height: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue : CircleButton.diameter.rawValue,
                            alignment: .center)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Circle().stroke(Color.blue, lineWidth: 1))
                        .transition(horizontalSizeClass == .compact ? CircleButtonHelper.transition0DegreeButtonCompact() : CircleButtonHelper.transition0DegreeButton())
                        .position(
                            x: horizontalSizeClass == .compact ? CircleButtonHelper.position0DegreeButtonCompact().x : CircleButtonHelper.position0DegreeButton().x,
                            y: horizontalSizeClass == .compact ? CircleButtonHelper.position0DegreeButtonCompact().y : CircleButtonHelper.position0DegreeButton().y)
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
                                .accessibility(label: Text("Roll starboard."))
                        }
                        .zIndex(2)
                        .frame(
                            width: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue :  CircleButton.diameter.rawValue,
                            height: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue :  CircleButton.diameter.rawValue,
                            alignment: .center)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Circle().stroke(Color.blue, lineWidth: 1))
                        .transition(horizontalSizeClass == .compact ? CircleButtonHelper.transition60DegreeButtonCompact() : CircleButtonHelper.transition60DegreeButton())
                        .position(
                            x: horizontalSizeClass == .compact ? CircleButtonHelper.position60DegreeButtonCompact().x : CircleButtonHelper.position60DegreeButton().x,
                            y: horizontalSizeClass == .compact ? CircleButtonHelper.position60DegreeButtonCompact().y : CircleButtonHelper.position60DegreeButton().y)
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
                            width: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue :  CircleButton.diameter.rawValue,
                            height: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue :  CircleButton.diameter.rawValue,
                            alignment: .center)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Circle().stroke(Color.blue, lineWidth: 1))
                        .transition(horizontalSizeClass == .compact ? CircleButtonHelper.transition120DegreeButtonCompact() : CircleButtonHelper.transition120DegreeButton())
                        .position(
                            x: horizontalSizeClass == .compact ? CircleButtonHelper.position120DegreeButtonCompact().x : CircleButtonHelper.position120DegreeButton().x,
                            y: horizontalSizeClass == .compact ? CircleButtonHelper.position120DegreeButtonCompact().y : CircleButtonHelper.position120DegreeButton().y)
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
                            width: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue :  CircleButton.diameter.rawValue,
                            height: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue :  CircleButton.diameter.rawValue,
                            alignment: .center)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Circle().stroke(Color.blue, lineWidth: 1))
                        .transition(horizontalSizeClass == .compact ? CircleButtonHelper.transition180DegreeButtonCompact() : CircleButtonHelper.transition180DegreeButton())
                        .position(
                            x: horizontalSizeClass == .compact ? CircleButtonHelper.position180DegreeButtonCompact().x : CircleButtonHelper.position180DegreeButton().x,
                            y: horizontalSizeClass == .compact ? CircleButtonHelper.position180DegreeButtonCompact().y : CircleButtonHelper.position180DegreeButton().y)
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
                            width: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue :  CircleButton.diameter.rawValue,
                            height: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue :  CircleButton.diameter.rawValue,
                            alignment: .center)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Circle().stroke(Color.blue, lineWidth: 1))
                        .transition(horizontalSizeClass == .compact ? CircleButtonHelper.transition240DegreeButtonCompact() : CircleButtonHelper.transition240DegreeButton())
                        .position(
                            x: horizontalSizeClass == .compact ? CircleButtonHelper.position240DegreeButtonCompact().x : CircleButtonHelper.position240DegreeButton().x,
                            y: horizontalSizeClass == .compact ? CircleButtonHelper.position240DegreeButtonCompact().y : CircleButtonHelper.position240DegreeButton().y)
                        //.animation(.ripple(buttonIndex: 2))
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))
                        
                        
                        
                        //
                        // Button for rolling port.
                        //
                        Button( action: {
                            withAnimation {
                                
                                self.rotationButtons.rollPortButtonPressed.toggle()
                                
                            }
                            
                            // Code to do something goes here
                            
                        }) {
                            Image(systemName: "arrow.counterclockwise")
                                .imageScale(.large)
                                .accessibility(label: Text("Rolling port."))
                        }
                        .zIndex(2)
                        .frame(
                            width: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue :  CircleButton.diameter.rawValue,
                            height: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue :  CircleButton.diameter.rawValue,
                            alignment: .center)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Circle().stroke(Color.blue, lineWidth: 1))
                        .transition(horizontalSizeClass == .compact ? CircleButtonHelper.transition300DegreeButtonCompact() : CircleButtonHelper.transition300DegreeButton())
                        .position(
                            x: horizontalSizeClass == .compact ? CircleButtonHelper.position300DegreeButtonCompact().x : CircleButtonHelper.position300DegreeButton().x,
                            y: horizontalSizeClass == .compact ? CircleButtonHelper.position300DegreeButtonCompact().y : CircleButtonHelper.position300DegreeButton().y)
                        //.animation(.ripple(buttonIndex: 2))
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))
                        
                }
                .animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))

                }

            }
            .frame(
                width: horizontalSizeClass == .compact ? CircleButton.widthHeightCompact.rawValue : CircleButton.widthHeight.rawValue,
                height: horizontalSizeClass == .compact ? CircleButton.widthHeightCompact.rawValue : CircleButton.widthHeight.rawValue,
                alignment: .bottomTrailing)

        }
        .frame(
            width: horizontalSizeClass == .compact ? CircleButton.widthHeightCompact.rawValue : CircleButton.widthHeight.rawValue,
            height: horizontalSizeClass == .compact ? CircleButton.widthHeightCompact.rawValue : CircleButton.widthHeight.rawValue,
            alignment: .bottomTrailing)
        .padding(.init(top: 5, leading: 5, bottom: 5, trailing: 5))

    }

}




struct BottomRightButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        BottomRightButtonsView().environmentObject(RotationButtons())
    }
}
