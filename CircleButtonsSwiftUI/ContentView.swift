//
//  ContentView.swift
//  CircleButtonsSwiftUI
//
//  Created by James Hillhouse IV on 7/11/21.
//


import SwiftUI




struct ContentView: View {
    // Don't forget that String? == Optional<String> != String
    // Using @AppStorage means that the app, no matter how many versions are launched on a device,
    // say on an iPad or Mac, will reflect the same state of storage. Think of it as a mirror effect.
    //@AppStorage("selectedView") var selectedView: String?

    // @SceneStorage means individual instances of the applications rather than the whole application.
    @SceneStorage("selectedView") var selectedView: String?

    @StateObject var cameraButtons                  = CameraButtons()
    @StateObject var settingsButtons                = SettingsButtons()
    @StateObject var devicesButton                  = DevicesButton()
    @StateObject var translationButtons             = TranslationButtons()
    @StateObject var transportationButton           = RotationButtons()



    var body: some View {
        ZStack {

            Image("Artemis-1_Stacking_Image")
                .frame(width: 100, height: 100, alignment: .center)


            CircleButtonsViewsView()
                .statusBar(hidden: true)

        }
        .environmentObject(cameraButtons)
        .environmentObject(settingsButtons)
        .environmentObject(devicesButton)
        .environmentObject(translationButtons)
        .environmentObject(transportationButton)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(CameraButtons())
    }
}
