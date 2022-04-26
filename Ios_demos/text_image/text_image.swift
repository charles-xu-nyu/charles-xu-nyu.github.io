import SwiftUI

struct textimageView: View {
    var body: some View {
        VStack{
        Text("Text Image Demo")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding([.top, .leading, .trailing])
            
        Text("Designed by Hanlin Xu")
                .font(.headline)
                .foregroundColor(.secondary)
            
        Text("     This is a simple demo which involves text view and image views.")
                .font(.body)
                .multilineTextAlignment(.leading)
                .padding(.all)
            
        Image("dsp")
            .resizable()
            .padding([.leading, .bottom, .trailing])
            .scaledToFit()
        
        Image("hello")
            .resizable()
            .padding([.leading, .bottom, .trailing])
            .scaledToFit()
        }
    }
}

struct textimageView_Previews: PreviewProvider {
    static var previews: some View {
        textimageView()
    }
}
