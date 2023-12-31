//
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  https://swiftuimasterclass.com
//

import SwiftUI

struct FruitCardView: View {
  // MARK: - PROPERTIES
  
  var fruit: Fruit
  
  @State private var isAnimating: Bool = false
  
  // MARK: - BODY
  
  var body: some View {
    ZStack {
      VStack(spacing: 20) {
          FruitCardImageView(fruit: fruit, isAnimating: $isAnimating)
          FruitCardTitleView(fruit: fruit)
          FruitCardHeadlineView(fruit: fruit)
          // BUTTON: START
          StartButtonView()
      } //: VSTACK
    } //: ZSTACK
    .onAppear {
      withAnimation(.easeOut(duration: 0.5)) {
        isAnimating = true
      }
    }
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
    .cornerRadius(20)
    .padding(.horizontal, 20)
  }
}


// FRUIT: IMAGE
struct FruitCardImageView: View {
    
    // MARK: - PROPERTIES
    var fruit: Fruit
    @Binding var isAnimating: Bool
    
    // MARK: - BODY
    var body: some View {
        Image(fruit.image)
          .resizable()
          .scaledToFit()
          .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
          .scaleEffect(isAnimating ? 1.0 : 0.6)
    }
}

// FRUIT: TITLE
struct FruitCardTitleView: View {
    
    // MARK: - PROPERTIES
    var fruit: Fruit

    // MARK: - BODY
    var body: some View {
        Text(fruit.title)
          .foregroundColor(Color.white)
          .font(.largeTitle)
          .fontWeight(.heavy)
          .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
    }
    
}

// FRUIT: HEADLINE
struct FruitCardHeadlineView: View {
    
    // MARK: - PROPERTIES
    var fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        Text(fruit.headline)
          .foregroundColor(Color.white)
          .multilineTextAlignment(.center)
          .padding(.horizontal, 16)
          .frame(maxWidth: 480)
    }
}


// MARK: - PREVIEW

struct FruitCardView_Previews: PreviewProvider {
  static var previews: some View {
    FruitCardView(fruit: fruitsData[1])
      .previewLayout(.fixed(width: 320, height: 640))
  }
}
