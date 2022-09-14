import SwiftUI

struct ContentView: View {
    @State var buttonTitle: String = "Button Not Clicked"
    @State var theNumber = 0
    var body: some View {
        VStack {
           Text(buttonTitle)
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(.black)
                .padding()
                .frame(height: 0.0)

            Button(action: {
                theNumber+=1
                buttonTitle = "Button Clicked \(theNumber) times"
            }) {
                Text("Click Here")
            }
            .padding()
            .accessibility(identifier: "counterButton")
        }
    }
}
