//
//  TopRightCompactView.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 7/2/21.
//

import SwiftUI




struct TopRightCompactView: View {
    @EnvironmentObject var settingsButtons: SettingsButtons
    @EnvironmentObject var cameraButtons: CameraButtons

    var body: some View {

        HStack(spacing: 5) {
            ZStack (alignment: .center) {
                Button(action: {
                    withAnimation(.easeInOut(duration: Double( CircleButton.animationSlow.rawValue ))) {

                        self.settingsButtons.showSettingsButtons.toggle()
                        self.cameraButtons.showCameraButtons = false

                    }
                }) {
                    Image(systemName: "gearshape.fill")
                        .frame(width: CircleButton.diameterCompact.rawValue, height: CircleButton.diameterCompact.rawValue, alignment: .center)
                        .imageScale(.large)
                }
                .frame(alignment: .trailing)
                .zIndex(3)
                .background(CircleButtonColor.mainWithoutBackground.rawValue)
                .clipShape(Circle())
                .background(Capsule().stroke(Color.blue, lineWidth: 1))


                // Settings buttons
                if settingsButtons.showSettingsButtons {

                    Button(action: {

                        self.doSomething()

                        self.settingsButtons.userInfoButtonPressed.toggle()
                        print("The settings button pressed is \(settingsButtons.userInfoButtonPressed) in \(#file) \(#function)")

                    }) {
                        Image(systemName: "person")
                            .frame(width: CircleButton.diameterCompact.rawValue, height: CircleButton.diameterCompact.rawValue, alignment: .center)
                            .imageScale(.large)
                    }
                    .zIndex(2)
                    .background(CircleButtonColor.offWithoutBackground.rawValue)
                    .clipShape(Circle())
                    .background(Capsule().stroke(Color.blue, lineWidth: 1))
                    .transition(moveAndFade(buttonIndex: 1))
                    .offset(x: -( CircleButton.diameterWithRadialSpacingCompact.rawValue ), y: 0)
                    //.animation(.ripple(buttonIndex: 2), value: settingsButtons.showSettingsButtons)



                    // Settings button
                    Button(action: {

                        self.doSomething()

                        self.settingsButtons.settingsButtonPressed.toggle()
                        print("The settings button pressed is \(settingsButtons.settingsButtonPressed) in \(#file) \(#function)")

                    }) {
                        Image(systemName: "gearshape.2.fill")
                            .frame(width: CircleButton.diameterCompact.rawValue, height: CircleButton.diameterCompact.rawValue, alignment: .center)
                            .imageScale(.large)
                    }
                    .zIndex(1)
                    .background(CircleButtonColor.offWithoutBackground.rawValue)
                    .clipShape(Circle())
                    .background(Capsule().stroke(Color.blue, lineWidth: 1))
                    .transition(moveAndFade(buttonIndex: 2))
                    .offset(x: -( CircleButton.diameterWithRadialSpacingCompact.rawValue * 2 ), y: 0)
                    //.animation(.ripple(buttonIndex: 2), value: settingsButtons.showSettingsButtons)
                }
            }
        }
        .padding(.init(top: 5, leading: 5, bottom: 5, trailing: 5))
    }



    func moveAndFade(buttonIndex: Int) -> AnyTransition {
        let insertion   = AnyTransition.move(edge: .trailing)
            .combined(with: .opacity)

        let removal     = AnyTransition.offset(x: CircleButton.diameterCompact.rawValue * CGFloat(buttonIndex), y: 0)
            .combined(with: .opacity)

        return AnyTransition.asymmetric(insertion: insertion, removal: removal)
    }



    func doSomething() -> Void {
        print("You just pressed a button.")
    }
}




struct TopRightCompactView_Previews: PreviewProvider {
    static var previews: some View {
        TopRightCompactView().environmentObject(SettingsButtons())
    }
}
