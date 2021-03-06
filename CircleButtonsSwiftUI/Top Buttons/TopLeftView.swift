//
//  TopLeftView.swift
//  FourCornersUIWithSwiftUI
//
//  Created by James Hillhouse IV on 4/9/21.
//

import SwiftUI




struct TopLeftView: View {
    @EnvironmentObject var cameraButtons: CameraButtons


    var body: some View {

        HStack(spacing: 5) {
            ZStack (alignment: .center) {
                Button(action: {
                    withAnimation(.ripple(buttonIndex: 1)/*.easeInOut(duration: Double( CircleButton.animationSlow.rawValue ))*/) {

                        self.cameraButtons.showCameraButtons.toggle()

                    }
                }) {
                    Image(systemName: "video.fill")
                        .frame(width: CircleButton.diameter.rawValue, height: CircleButton.diameter.rawValue, alignment: .center)
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
                            .frame(width: CircleButton.diameter.rawValue, height: CircleButton.diameter.rawValue, alignment: .center)
                            .imageScale(.large)
                    }
                    .zIndex(2)
                    .background(CircleButtonColor.offWithoutBackground.rawValue)
                    .clipShape(Circle())
                    .background(Capsule().stroke(Color.blue, lineWidth: 1))
                    .transition(moveAndFade(buttonIndex: 1))
                    .offset(x: CircleButton.diameterWithRadialSpacing.rawValue, y: 0)
                    //.animation(.ripple(buttonIndex: 1))


                    Button(action: {

                        self.doSomething()
                        self.cameraButtons.pilotCameraButtonPressed.toggle()
                        print("Pilot button pressed is \(cameraButtons.pilotCameraButtonPressed) in \(#file) \(#function)")

                    }) {
                        Image(systemName: "person.fill")
                            .frame(width: CircleButton.diameter.rawValue, height: CircleButton.diameter.rawValue, alignment: .center)
                            .imageScale(.large)
                    }
                    .zIndex(1)
                    .background(CircleButtonColor.offWithoutBackground.rawValue)
                    .clipShape(Circle())
                    .background(Capsule().stroke(Color.blue, lineWidth: 1))
                    .transition(moveAndFade(buttonIndex: 2))
                    .offset(x: CircleButton.diameterWithRadialSpacing.rawValue * 2, y: 0)
                    //.animation(.ripple(buttonIndex: 2))
                }
            }
        }
        .padding(.init(top: 5, leading: 5, bottom: 5, trailing: 5))
    }



    func moveAndFade(buttonIndex: Int) -> AnyTransition {
        let insertion   = AnyTransition.move(edge: .leading)
            .combined(with: .opacity)

        let removal     = AnyTransition.offset(x: -CircleButton.diameter.rawValue * CGFloat(buttonIndex), y: 0)
            .combined(with: .opacity)

        return AnyTransition.asymmetric(insertion: insertion, removal: removal)
    }



    func doSomething() -> Void {
        print("You just pressed a button. Keep rocking!")
    }
}




struct TopLeftView_Previews: PreviewProvider {
    static var previews: some View {
        TopLeftView().environmentObject(CameraButtons())
    }
}
