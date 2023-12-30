//
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  https://swiftuimasterclass.com 
//

import SwiftUI

struct HomeScreen: View {
    
    // MARK: - PROPERTIES
  
    @StateObject private var viewModel = HomeViewModel()
    @State private var isShowingSettings: Bool = false

    // MARK: - BODY
    var body: some View {
        NavigationView {
            FruitListView(viewModel: viewModel, isShowingSettings: $isShowingSettings)
                .navigationTitle("Fruits")
                .navigationBarItems(trailing: settingsButton)
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear {
            viewModel.fetchData() // Fetch data
        }
    }

    // Subview for settings button
    private var settingsButton: some View {
        Button(action: {
            isShowingSettings = true
        }) {
            Image(systemName: "slider.horizontal.3")
        }
        .sheet(isPresented: $isShowingSettings) {
            SettingsScreen()
        }
    }
}

// Subview for displaying the list of fruits
struct FruitListView: View {
    @ObservedObject var viewModel: HomeViewModel
    @Binding var isShowingSettings: Bool

    var body: some View {
        List {
            ForEach(viewModel.fruits.shuffled()) { item in
                NavigationLink(destination: FruitDetailScreen(fruit: item)) {
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
        }
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    HomeScreen()
      .previewDevice("iPhone 11 Pro")
  }
}
