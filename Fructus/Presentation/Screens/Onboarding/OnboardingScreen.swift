//
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  https://swiftuimasterclass.com 
//

import SwiftUI

struct OnboardingScreen: View {

    // MARK: - PROPERTIES
    @StateObject private var viewModel = OnboardingViewModel()
  
    // MARK: - BODY
  
    var body: some View {
        TabView {
            ForEach(viewModel.topFruits) { item in
                FruitCardView(fruit: item)
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        .onAppear {
            viewModel.fetchData() // Fetch data
        }
    }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingScreen()
      .previewDevice("iPhone 11 Pro")
  }
}
