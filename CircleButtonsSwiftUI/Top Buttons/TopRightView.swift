//
//  TopRightView.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 4/28/21.
//

import SwiftUI




struct TopRightView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass

    @EnvironmentObject var settingsButtons: SettingsButtons
    @EnvironmentObject var cameraButtons: CameraButtons


    var body: some View {

        HStack(spacing: 5) {
            ZStack (alignment: .center) {
                Button(action: {
                    withAnimation(.ripple(buttonIndex: 1)) {

                        self.settingsButtons.showSettingsButtons.toggle()
                        
                        if horizontalSizeClass == .compact {
                            self.cameraButtons.showCameraButtons = false
                        }

                    }
                }) {
                    Image(systemName: "gearshape.fill")
                        .imageScale(.large)
                }
                .zIndex(3)
                .frame(width: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue : CircleButton.diameter.rawValue,
                       height: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue : CircleButton.diameter.rawValue,
                       alignment: .center)
                .background(CircleButtonColor.mainWithoutBackground.rawValue)
                .clipShape(Circle())
                .background(Circle().stroke(Color.blue, lineWidth: 1))



                // Settings buttons
                if settingsButtons.showSettingsButtons {

                    Button(action: {

                        self.doSomething()

                        self.settingsButtons.userInfoButtonPressed.toggle()
                        print("The settings button pressed is \(settingsButtons.userInfoButtonPressed) in \(#file) \(#function)")

                    }) {
                        Image(systemName: "person")
                            .imageScale(.large)
                    }
                    .zIndex(2)
                    .frame(
                        width: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue : CircleButton.diameter.rawValue,
                        height: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue : CircleButton.diameter.rawValue,
                        alignment: .center)
                    .background(CircleButtonColor.offWithoutBackground.rawValue)
                    .clipShape(Circle())
                    .background(Capsule().stroke(Color.blue, lineWidth: 1))
                    .transition(moveAndFade(buttonIndex: 1))
                    .offset(
                        x: horizontalSizeClass == .compact ? -( CircleButton.diameterWithRadialSpacingCompact.rawValue ) : -( CircleButton.diameterWithRadialSpacing.rawValue ),
                        y: 0)



                    // Settings button
                    Button(action: {

                        self.doSomething()

                        self.settingsButtons.settingsButtonPressed.toggle()
                        print("The settings button pressed is \(settingsButtons.settingsButtonPressed) in \(#file) \(#function)")

                    }) {
                        Image(systemName: "gearshape.2.fill")
                            .imageScale(.large)
                    }
                    .zIndex(1)
                    .frame(
                        width: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue : CircleButton.diameter.rawValue,
                        height: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue : CircleButton.diameter.rawValue,
                        alignment: .center)
                    .background(CircleButtonColor.offWithoutBackground.rawValue)
                    .clipShape(Circle())
                    .background(Capsule().stroke(Color.blue, lineWidth: 1))
                    .transition(moveAndFade(buttonIndex: 2))
                    .offset(
                        x: horizontalSizeClass == .compact ? -( CircleButton.diameterWithRadialSpacingCompact.rawValue * 2 ) : -( CircleButton.diameterWithRadialSpacing.rawValue * 2 ),
                        y: 0)
                }
            }
        }
        .padding(.init(top: 5, leading: 5, bottom: 5, trailing: 5))
    }



    func moveAndFade(buttonIndex: Int) -> AnyTransition {
        let insertion   = AnyTransition.move(edge: .trailing)
            .combined(with: .opacity)

        let removal     = AnyTransition.offset(
            x: horizontalSizeClass == .compact ? CircleButton.diameterCompact.rawValue * CGFloat(buttonIndex) : CircleButton.diameter.rawValue * CGFloat(buttonIndex),
            y: 0)
            .combined(with: .opacity)

        return AnyTransition.asymmetric(insertion: insertion, removal: removal)
    }



    func doSomething() -> Void {
        print("You just pressed a button.")
    }
}

struct TopRightView_Previews: PreviewProvider {
    static var previews: some View {
        TopRightView().environmentObject(SettingsButtons())
    }
}
