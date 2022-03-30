//
//  BottomLeftButtonView.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 6/1/21.
//

import SwiftUI




struct BottomLeftButtonView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass

    @EnvironmentObject var translationButtons: TranslationButtons



    var body: some View {

        HStack (spacing: 5) {

            ZStack {
                Circle()
                    .fill(CircleButtonColor.background.rawValue)
                    .zIndex(-1)
                    .clipShape(Circle())
                    .position(
                        x: horizontalSizeClass == .compact ? CircleButton.halfWidthHeightCompact.rawValue : CircleButton.halfWidthHeight.rawValue,
                        y: horizontalSizeClass == .compact ? CircleButton.halfWidthHeightCompact.rawValue :
                            CircleButton.halfWidthHeight.rawValue)



                //
                //
                // Access translation buttons
                Button(action: {
                    withAnimation(.easeInOut(duration: Double(CircleButton.animationFast.rawValue))) {

                        self.translationButtons.showTranslationButtons.toggle()

                    }
                }) {
                    Image(systemName: "move.3d")
                        .imageScale(.large)
                }
                .zIndex(3)
                .frame(
                    width: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue :  CircleButton.diameter.rawValue,
                    height: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue : CircleButton.diameter.rawValue,
                    alignment: .center)
                .background(CircleButtonColor.main.rawValue)
                .clipShape(Circle())
                .background(Circle().stroke(Color.blue, lineWidth: 1))
                .position(
                    x: horizontalSizeClass == .compact ? CircleButtonHelper.positionMainButtonCompact().x : CircleButtonHelper.positionMainButton().x,
                    y: horizontalSizeClass == .compact ? CircleButtonHelper.positionMainButtonCompact().y : CircleButtonHelper.positionMainButton().y)
                //.animation(.ripple(buttonIndex: 2))


                if translationButtons.showTranslationButtons {

                    Group {

                        //
                        // Button for translating up.
                        //
                        Button( action: {
                            withAnimation {

                                self.translationButtons.translateUpButtonPressed.toggle()

                            }

                            // Code to do something goes here

                        }) {
                            Image(systemName: "arrow.up")
                                .imageScale(.large)
                                .accessibility(label: Text("Translate Up"))
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
                        //.animation(.ripple(buttonIndex: 2))
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))



                        //
                        // Button for translating forward.
                        //
                        //#warning("Implement 45 degree up button here")
                        Button( action: {
                            withAnimation {

                                self.translationButtons.translateForwardButtonPressed.toggle()

                            }

                            // Code for doing something goes here

                        }) {
                            Image(systemName: "arrow.up.to.line.alt")
                                .imageScale(.large)
                                .accessibility(label: Text("Translate Forward"))
                        }
                        .zIndex(2)
                        .frame(
                            width: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue :  CircleButton.diameter.rawValue,
                            height: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue : CircleButton.diameter.rawValue,
                            alignment: .center)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Circle().stroke(Color.blue, lineWidth: 1))
                        .transition(horizontalSizeClass == .compact ? CircleButtonHelper.transition60DegreeButtonCompact() : CircleButtonHelper.transition60DegreeButton())
                        .position(
                            x: horizontalSizeClass == .compact ? CircleButtonHelper.position60DegreeButtonCompact().x : CircleButtonHelper.position60DegreeButton().x,
                            y: horizontalSizeClass == .compact ? CircleButtonHelper.position60DegreeButtonCompact().y : CircleButtonHelper.position60DegreeButton().y)
                        //.animation(.ripple(buttonIndex: 2))
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))



                        //
                        // Button for translating right or starboard.
                        //
                        Button( action: {
                            withAnimation {

                                self.translationButtons.translateStarboardButtonPressed.toggle()

                            }

                            // Code for doing something goes here

                        }) {
                            Image(systemName: "arrow.right")
                                .imageScale(.large)
                                .accessibility(label: Text("Translate Right or Starboard"))
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
                        //.animation(.ripple(buttonIndex: 2))
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))



                        //
                        // Button for translating down.
                        //
                        Button( action: {
                            withAnimation {

                                self.translationButtons.translateDownButtonPressed.toggle()

                            }

                            // Code for doing something goes here

                        }) {
                            Image(systemName: "arrow.down")
                                .imageScale(.large)
                                .accessibility(label: Text("Tranlate Down"))
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
                        // Button for translating left or port.
                        //
                        Button( action: {
                            withAnimation {

                                self.translationButtons.translatePortButtonPressed.toggle()

                            }

                            // Code for doing something goes here

                        }) {
                            Image(systemName: "arrow.left")
                                .imageScale(.large)
                                .accessibility(label: Text("Translate Left or Port"))
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
                        // Button for translating reverse.
                        //
                        //#warning("Implement 45 degree up button here")
                        Button( action: {
                            withAnimation {

                                self.translationButtons.translateAftButtonPressed.toggle()

                            }

                            // Code for doing something goes here

                        }) {
                            Image(systemName: "arrow.down.to.line.alt")
                                .imageScale(.large)
                                .accessibility(label: Text("Translate Reverse"))
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
                alignment: .bottomLeading)
        }
        .frame(
            width: horizontalSizeClass == .compact ? CircleButton.widthHeightCompact.rawValue : CircleButton.widthHeight.rawValue,
            height: horizontalSizeClass == .compact ? CircleButton.widthHeightCompact.rawValue : CircleButton.widthHeight.rawValue,
            alignment: .bottomLeading)
        .padding(.init(top: 5, leading: 5, bottom: 5, trailing: 5))
    }
}




struct BottomLeftButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BottomLeftButtonView().environmentObject(TranslationButtons())
    }
}
