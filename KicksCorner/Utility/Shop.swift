//
//  KicksCorner
//
//  Created by Sergio Sánchez Sánchez on 19/7/23.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product? //= nil 
}
