//
//  TopLeftViewCompact.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 7/2/21.
//

import SwiftUI




struct TopLeftViewCompact: View {
    @EnvironmentObject var cameraButtons: CameraButtons
    @EnvironmentObject var settingsButtons: SettingsButtons


    var body: some View {

        HStack(spacing: 5) {
            ZStack (alignment: .center) {
                Button(action: {
                    withAnimation(.easeInOut(duration: Double( CircleButton.animationSlow.rawValue ))) {

                        self.cameraButtons.showCameraButtons.toggle()
                        self.settingsButtons.showSettingsButtons = false

                    }
                }) {
                    Image(systemName: "video.fill")
                        .frame(width: CircleButton.diameterCompact.rawValue, height: CircleButton.diameterCompact.rawValue, alignment: .center)
                        .imageScale(.large)
                }
                .frame(alignment: .leading)
                .zIndex(3)
                .background(CircleButtonColor.mainWithoutBackground.rawValue)
                .clipShape(Circle())
                .background(Capsule().stroke(Color.blue, lineWidth: 1))



                if cameraButtons.showCameraButtons {

                    Button(action: {

                        self.doSomething()
                        self.cameraButtons.aircraftCameraButtonPressed.toggle()
                        print("Aircraft button pressed is \(cameraButtons.aircraftCameraButtonPressed) in \(#file) \(#function)")
                    }) {
                        Image(systemName: "airplane")
                            .frame(width: CircleButton.diameterCompact.rawValue, height: CircleButton.diameterCompact.rawValue, alignment: .center)
                            .imageScale(.large)
                    }
                    .zIndex(2)
                    .background(CircleButtonColor.offWithoutBackground.rawValue)
                    .clipShape(Circle())
                    .background(Capsule().stroke(Color.blue, lineWidth: 1))
                    .transition(moveAndFade(buttonIndex: 1))
                    .offset(x: CircleButton.diameterWithRadialSpacingCompact.rawValue, y: 0)
                    //.animation(.ripple(buttonIndex: 1), value: cameraButtons.showCameraButtons)


                    Button(action: {

                        self.doSomething()
                        self.cameraButtons.pilotCameraButtonPressed.toggle()
                        print("Pilot button pressed is \(cameraButtons.pilotCameraButtonPressed) in \(#file) \(#function)")

                    }) {
                        Image(systemName: "person.fill")
                            .frame(width: CircleButton.diameterCompact.rawValue, height: CircleButton.diameterCompact.rawValue, alignment: .center)
                            .imageScale(.large)
                    }
                    .zIndex(1)
                    .background(CircleButtonColor.offWithoutBackground.rawValue)
                    .clipShape(Circle())
                    .background(Capsule().stroke(Color.blue, lineWidth: 1))
                    .transition(moveAndFade(buttonIndex: 2))
                    .offset(x: CircleButton.diameterWithRadialSpacingCompact.rawValue * 2, y: 0)
                    //.animation(.ripple(buttonIndex: 2), value: cameraButtons.showCameraButtons)
                }
            }
        }
        .padding(.init(top: 5, leading: 5, bottom: 5, trailing: 5))
    }



    func moveAndFade(buttonIndex: Int) -> AnyTransition {
        let insertion   = AnyTransition.move(edge: .leading)
            .combined(with: .opacity)

        let removal     = AnyTransition.offset(x: -CircleButton.diameterCompact.rawValue * CGFloat(buttonIndex), y: 0)
            .combined(with: .opacity)

        return AnyTransition.asymmetric(insertion: insertion, removal: removal)
    }



    func doSomething() -> Void {
        print("You just pressed a button. Keep rocking!")
    }
}




struct TopLeftViewCompact_Previews: PreviewProvider {
    static var previews: some View {
        TopLeftViewCompact().environmentObject(CameraButtons())
    }
}
