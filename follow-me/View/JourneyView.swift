import SwiftUI
import SlideOverCard

struct JourneyView : View {
    @State private var position = CardPosition.bottom
    @State private var background = BackgroundStyle.solid
    
    var body: some View {
        ZStack(alignment: Alignment.top) {
            MapView()
            SlideOverCard($position, backgroundStyle: $background) {
                VStack {
                    Text("Slide Over Card").font(.title)
                    Spacer()
                }
            }
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct JourneyView_Previews: PreviewProvider {
    static var previews: some View {
        JourneyView()
    }
}
