//
//  BottomLeftButtonView.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 6/1/21.
//

import SwiftUI




struct BottomLeftButtonView: View {
    @EnvironmentObject var translationButtons: TranslationButtons



    var body: some View {

        HStack (spacing: 5) {

            ZStack {
                Circle()
                    .fill(CircleButtonColor.background.rawValue)
                    .zIndex(-1)
                    .clipShape(Circle())
                    .position(x: CircleButton.halfWidthHeight.rawValue, y: CircleButton.halfWidthHeight.rawValue)



                //
                //
                // Access translation buttons
                Button(action: {
                    withAnimation(.easeInOut(duration: Double(CircleButton.animationFast.rawValue))) {

                        self.translationButtons.showTranslationButtons.toggle()

                    }
                }) {
                    Image(systemName: "move.3d")
                        .frame(width: CircleButton.diameter.rawValue, height: CircleButton.diameter.rawValue, alignment: .center)
                        .imageScale(.large)
                }
                .zIndex(3)
                .background(CircleButtonColor.main.rawValue)
                .clipShape(Circle())
                .background(Capsule().stroke(Color.blue, lineWidth: 1))
                .position(x: CircleButtonHelper.positionMainButton().x, y: CircleButtonHelper.positionMainButton().y)
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
                                .frame(width: CircleButton.diameter.rawValue, height: CircleButton.diameter.rawValue, alignment: .center)
                                .imageScale(.large)
                                .accessibility(label: Text("Translate Up"))
                        }
                        .zIndex(2)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Capsule().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition0DegreeButton())
                        .position(x: CircleButtonHelper.position0DegreeButton().x, y: CircleButtonHelper.position0DegreeButton().y)
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
                                .frame(width: CircleButton.diameter.rawValue, height: CircleButton.diameter.rawValue, alignment: .center)
                                .imageScale(.large)
                                .accessibility(label: Text("Translate Forward"))
                        }
                        .zIndex(2)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Capsule().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition60DegreeButton())
                        .position(x: CircleButtonHelper.position60DegreeButton().x, y: CircleButtonHelper.position60DegreeButton().y)
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
                                .frame(width: CircleButton.diameter.rawValue, height: CircleButton.diameter.rawValue, alignment: .center)
                                .imageScale(.large)
                                .accessibility(label: Text("Translate Right or Starboard"))
                        }
                        .zIndex(2)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Capsule().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition120DegreeButton())
                        .position(x: CircleButtonHelper.position120DegreeButton().x, y: CircleButtonHelper.position120DegreeButton().y)
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
                                .frame(width: CircleButton.diameter.rawValue, height: CircleButton.diameter.rawValue, alignment: .center)
                                .imageScale(.large)
                                .accessibility(label: Text("Tranlate Down"))
                        }
                        .zIndex(2)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Capsule().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition180DegreeButton())
                        .position(x: CircleButtonHelper.position180DegreeButton().x, y: CircleButtonHelper.position180DegreeButton().y)
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
                                .frame(width: CircleButton.diameter.rawValue, height: CircleButton.diameter.rawValue, alignment: .center)
                                .imageScale(.large)
                                .accessibility(label: Text("Translate Left or Port"))
                        }
                        .zIndex(2)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Capsule().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition240DegreeButton())
                        .position(x: CircleButtonHelper.position240DegreeButton().x, y: CircleButtonHelper.position240DegreeButton().y)
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
                                .frame(width: CircleButton.diameter.rawValue, height: CircleButton.diameter.rawValue, alignment: .center)
                                .imageScale(.large)
                                .accessibility(label: Text("Translate Reverse"))
                        }
                        .zIndex(2)
                        .background(CircleButtonColor.offWithBackground.rawValue)
                        .clipShape(Circle())
                        .background(Capsule().stroke(Color.blue, lineWidth: 1))
                        .transition(CircleButtonHelper.transition300DegreeButton())
                        .position(x: CircleButtonHelper.position300DegreeButton().x, y: CircleButtonHelper.position300DegreeButton().y)
                        //.animation(.ripple(buttonIndex: 2))
                        //.animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))

                    }
                    .animation(.easeInOut(duration: Double( CircleButton.animationFast.rawValue) ).delay(0.0))

                }
            }
            .frame(width: CircleButton.widthHeight.rawValue, height: CircleButton.widthHeight.rawValue, alignment: .bottomLeading)
        }
        .frame(width: CircleButton.widthHeight.rawValue, height: CircleButton.extendedHeight.rawValue, alignment: .bottomLeading)
        .padding(.init(top: 5, leading: 5, bottom: 5, trailing: 5))
    }
}




struct BottomLeftButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BottomLeftButtonView().environmentObject(TranslationButtons())
    }
}
