//
//  BottomLeftButtonCompactView.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 6/23/21.
//

import SwiftUI




struct BottomLeftButtonCompactView: View {
    @EnvironmentObject var translationButtons: TranslationButtons



    var body: some View {

        HStack (spacing: 5) {

            ZStack {
                Circle()
                    .fill(CircleButtonColor.background.rawValue)
                    .zIndex(-1)
                    .clipShape(Circle())
                    .position(x: CircleButtonView.halfWidthHeightCompact.rawValue, y: CircleButtonView.halfWidthHeightCompact.rawValue)



                //
                // Access translation buttons
                //
                Button(action: {
                    withAnimation(.easeInOut(duration: Double(CircleButton.animationFast.rawValue))) {

                        self.translationButtons.showTranslationButtons.toggle()

                    }
                }) {
                    Image(systemName: "move.3d")
                        .frame(width: CircleButton.diameterCompact.rawValue, height: CircleButton.diameterCompact.rawValue, alignment: .center)
                        .imageScale(.large)
                }
                //.frame(alignment: .leading)
                .zIndex(3)
                .background(CircleButtonColor.main.rawValue)
                .clipShape(Circle())
                .background(Capsule().stroke(Color.blue, lineWidth: 1))
                .position(x: CircleButtonHelper.positionMainButtonCompact().x, y: CircleButtonHelper.positionMainButtonCompact().y)


                if translationButtons.showTranslationButtons {

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
                            .frame(width: CircleButton.diameterCompact.rawValue, height: CircleButton.diameterCompact.rawValue, alignment: .center)
                            .imageScale(.large)
                            .accessibility(label: Text("Translate Up"))
                    }
                    .zIndex(2)
                    .background(CircleButtonColor.offWithBackground.rawValue)
                    .clipShape(Circle())
                    .background(Capsule().stroke(Color.blue, lineWidth: 1))
                    .transition(CircleButtonHelper.transition0DegreeButtonCompact())
                    .position(x: CircleButtonHelper.position0DegreeButtonCompact().x, y: CircleButtonHelper.position0DegreeButtonCompact().y)
                    //.animation(.ripple(buttonIndex: 2))
                    .animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))



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
                            .frame(width: CircleButton.diameterCompact.rawValue, height: CircleButton.diameterCompact.rawValue, alignment: .center)
                            .imageScale(.large)
                            .accessibility(label: Text("Translate Forward"))
                    }
                    .zIndex(2)
                    .background(CircleButtonColor.offWithBackground.rawValue)
                    .clipShape(Circle())
                    .background(Capsule().stroke(Color.blue, lineWidth: 1))
                    .transition(CircleButtonHelper.transition60DegreeButtonCompact())
                    .position(x: CircleButtonHelper.position60DegreeButtonCompact().x, y: CircleButtonHelper.position60DegreeButtonCompact().y)//.transition(move60DegreeButton())
                    //.animation(.ripple(buttonIndex: 2))
                    .animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))


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
                            .frame(width: CircleButton.diameterCompact.rawValue, height: CircleButton.diameterCompact.rawValue, alignment: .center)
                            .imageScale(.large)
                            .accessibility(label: Text("Translate Right or Starboard"))
                    }
                    .zIndex(2)
                    .background(CircleButtonColor.offWithBackground.rawValue)
                    .clipShape(Circle())
                    .background(Capsule().stroke(Color.blue, lineWidth: 1))
                    .transition(CircleButtonHelper.transition120DegreeButtonCompact())
                    .position(x: CircleButtonHelper.position120DegreeButtonCompact().x, y: CircleButtonHelper.position120DegreeButtonCompact().y)
                    //.animation(.ripple(buttonIndex: 2))
                    .animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))



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
                            .frame(width: CircleButton.diameterCompact.rawValue, height: CircleButton.diameterCompact.rawValue, alignment: .center)
                            .imageScale(.large)
                            .accessibility(label: Text("Tranlate Down"))
                    }
                    .zIndex(2)
                    .background(CircleButtonColor.offWithBackground.rawValue)
                    .clipShape(Circle())
                    .background(Capsule().stroke(Color.blue, lineWidth: 1))
                    .transition(CircleButtonHelper.transition180DegreeButtonCompact())
                    .position(x: CircleButtonHelper.position180DegreeButtonCompact().x, y: CircleButtonHelper.position180DegreeButtonCompact().y)
                    //.animation(.ripple(buttonIndex: 2))
                    .animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))



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
                            .frame(width: CircleButton.diameterCompact.rawValue, height: CircleButton.diameterCompact.rawValue, alignment: .center)
                            .imageScale(.large)
                            .accessibility(label: Text("Translate Left or Port"))
                    }
                    .zIndex(2)
                    .background(CircleButtonColor.offWithBackground.rawValue)
                    .clipShape(Circle())
                    .background(Capsule().stroke(Color.blue, lineWidth: 1))
                    .transition(CircleButtonHelper.transition240DegreeButtonCompact())
                    .position(x: CircleButtonHelper.position240DegreeButtonCompact().x, y: CircleButtonHelper.position240DegreeButtonCompact().y)
                    //.animation(.ripple(buttonIndex: 2))
                    .animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))



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
                            .frame(width: CircleButton.diameterCompact.rawValue, height: CircleButton.diameterCompact.rawValue, alignment: .center)
                            .imageScale(.large)
                            .accessibility(label: Text("Translate Reverse"))
                    }
                    .zIndex(2)
                    .background(CircleButtonColor.offWithBackground.rawValue)
                    .clipShape(Circle())
                    .background(Capsule().stroke(Color.blue, lineWidth: 1))
                    .transition(CircleButtonHelper.transition300DegreeButtonCompact())
                    .position(x: CircleButtonHelper.position300DegreeButtonCompact().x, y: CircleButtonHelper.position300DegreeButtonCompact().y)
                    //.animation(.ripple(buttonIndex: 2))
                    .animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))
                }
            }
            .frame(width: CircleButtonView.widthHeightCompact.rawValue, height: CircleButtonView.widthHeightCompact.rawValue, alignment: .bottomLeading)
            //.background(Color.orange)
        }
        .frame(width: CircleButtonView.widthHeightCompact.rawValue, height: CircleButtonView.extendedHeightCompact.rawValue, alignment: .bottomLeading)
        //.background(Color.red)
        .padding(.init(top: 5, leading: 5, bottom: 0, trailing: 5))
    }



    func move0DegreeButton() -> AnyTransition {
        let insertion   = AnyTransition.offset(x: 0, y: CircleButton.diameterWithRadialSpacingCompact.rawValue)
            .combined(with: .opacity)

        let removal     = AnyTransition.offset(x: 0, y: CircleButton.diameterWithRadialSpacingCompact.rawValue)
            .combined(with: .opacity)

        return AnyTransition.asymmetric(insertion: insertion, removal: removal)
    }



    func move60DegreeButton() -> AnyTransition {
        let insertion   = AnyTransition.offset(x: -( CircleButton.diameterWithRadialSpacingCompact.rawValue * CGFloat(cos(Double.pi / 6.0 ) ) ), y: CircleButton.diameterWithRadialSpacingCompact.rawValue  * CGFloat(sin(Double.pi / 6.0 ) ) )
            .combined(with: .opacity)

        let removal     = AnyTransition.offset(x: -( CircleButton.diameterWithRadialSpacingCompact.rawValue * CGFloat(cos(Double.pi / 6.0 ) ) ), y: CircleButton.diameterWithRadialSpacingCompact.rawValue * CGFloat(sin(Double.pi / 6.0 ) ) )
            .combined(with: .opacity)

        return AnyTransition.asymmetric(insertion: insertion, removal: removal)
    }



    func move120DegreeButton() -> AnyTransition {
        let insertion   = AnyTransition.offset(x: -( CircleButton.diameterWithRadialSpacingCompact.rawValue * CGFloat(cos(Double.pi / 6.0 ) ) ), y: -CircleButton.diameterWithRadialSpacingCompact.rawValue * CGFloat(sin(Double.pi / 6.0 ) ) )
            .combined(with: .opacity)

        let removal     = AnyTransition.offset(x: -( CircleButton.diameterWithRadialSpacingCompact.rawValue * CGFloat(cos(Double.pi / 6.0 ) ) ), y: -CircleButton.diameterWithRadialSpacingCompact.rawValue * CGFloat(sin(Double.pi / 6.0 ) ) )
            .combined(with: .opacity)

        return AnyTransition.asymmetric(insertion: insertion, removal: removal)
    }



    func move180DegreeButton() -> AnyTransition {
        let insertion   = AnyTransition.offset(x: 0, y: -CircleButton.diameterWithRadialSpacingCompact.rawValue)
            .combined(with: .opacity)

        let removal     = AnyTransition.offset(x: 0, y: -CircleButton.diameterWithRadialSpacingCompact.rawValue)
            .combined(with: .opacity)

        return AnyTransition.asymmetric(insertion: insertion, removal: removal)
    }



    func move240DegreeButton() -> AnyTransition {
        let insertion   = AnyTransition.offset(x: CircleButton.diameterWithRadialSpacingCompact.rawValue * CGFloat( cos(Double.pi / 6.0 ) ), y: -CircleButton.diameterWithRadialSpacingCompact.rawValue * CGFloat(sin(Double.pi / 6.0 ) ) )
            .combined(with: .opacity)

        let removal     = AnyTransition.offset(x: CircleButton.diameterWithRadialSpacingCompact.rawValue * CGFloat( cos(Double.pi / 6.0 ) ), y: -CircleButton.diameterWithRadialSpacingCompact.rawValue * CGFloat(sin(Double.pi / 6.0 ) ) )
            .combined(with: .opacity)

        return AnyTransition.asymmetric(insertion: insertion, removal: removal)
    }



    func move300DegreeButton() -> AnyTransition {
        let insertion   = AnyTransition.offset(x: CircleButton.diameterWithRadialSpacingCompact.rawValue * CGFloat( cos(Double.pi / 6.0 ) ), y: CircleButton.diameterWithRadialSpacingCompact.rawValue * CGFloat(sin(Double.pi / 6.0 ) ) )
            .combined(with: .opacity)

        let removal     = AnyTransition.offset(x: CircleButton.diameterWithRadialSpacingCompact.rawValue * CGFloat( cos(Double.pi / 6.0 ) ), y: CircleButton.diameterWithRadialSpacingCompact.rawValue * CGFloat(sin(Double.pi / 6.0 ) ) )
            .combined(with: .opacity)

        return AnyTransition.asymmetric(insertion: insertion, removal: removal)
    }
}




struct BottomLeftButtonCompactView_Previews: PreviewProvider {
    static var previews: some View {
        BottomLeftButtonCompactView().environmentObject(TranslationButtons())
    }
}
