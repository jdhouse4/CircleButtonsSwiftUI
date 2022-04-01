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
    @StateObject var orientationManager             = DeviceOrientation()



    var body: some View {
        /*ZStack {
            /*
            Image("Artemis-1_Stacking_Image")
                .resizable()
                .aspectRatio(contentMode: .fill)
                //.frame(width: 100, height: 100, alignment: .center)
            */
            
            //CircleButtonsViewsView()
        }*/
        
        ///
        /// - Important: Instead of a ZStack for layering an Image view beneath other views, this sets the Image as a background.
        ///
        ///  BTW, the bold words are callout's in Apple's Markdown language.
        ///
        /// - Authors: [aheze] (https://stackoverflow.com/users/14351818/aheze)
        ///
        /// - Remark: sets image as an background, which keeps the Image view from pushing the CircleButtonsViewView assunder.
        ///
        /// - Note:[Stack Overflow](https://stackoverflow.com/questions/57593552/swiftui-prevent-image-from-expanding-view-rect-outside-of-screen-bounds)
        ///

        CircleButtonsViewsView()
            .background(
                Image("Artemis-1_Wet_Dress_Sunset")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
            )
        
        ///
        /// - Important: Instead of a ZStack for layering an Image view beneath other views, this sets the Image as a background.
        ///
        ///  BTW, the bold words are **callouts** in Apple's Markdown language.
        ///
        /// - Authors: [Fabian] (https://stackoverflow.com/users/6266540/fabian)
        ///
        /// - Remark: Fabian notes that aheze's suggestion of using .background(Image(...)) as a way of doing this may be clearner than his two suggested ways that follow.
        ///
        /// - Attention: Both of Fabian's ways of getting this to work perform adequately. I'm including them here just in case I need a reminder or refresher.
        ///
        /// - Note:[Stack Overflow](https://stackoverflow.com/questions/57593552/swiftui-prevent-image-from-expanding-view-rect-outside-of-screen-bounds)
        ///
        /*
         /*
        ZStack {
            GeometryReader { geometry in
                Image("Artemis-1_Stacking_Image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                    .frame(
                        maxWidth: geometry.size.width,
                        maxHeight: geometry.size.height)
            }
          */
        
         /*
            Image("Artemis-1_Stacking_Image")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .frame(
                    maxWidth: UIScreen.main.bounds.width,
                    maxHeight: UIScreen.main.bounds.height)
            
            CircleButtonsViewsView()
          */
        }
        */
        .environmentObject(cameraButtons)
        .environmentObject(settingsButtons)
        .environmentObject(devicesButton)
        .environmentObject(translationButtons)
        .environmentObject(transportationButton)
        .environmentObject(orientationManager)
        
        .statusBar(hidden: true)
        //.background(Color.blue.opacity(0.25))
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(CameraButtons())
    }
}
