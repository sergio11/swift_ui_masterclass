//
//  SettingsAboutSectionView.swift
//  Fructus
//
//  Created by Sergio Sánchez Sánchez on 30/12/23.
//

import SwiftUI

struct SettingsAboutSectionView: View {
    
    var body: some View {
        GroupBox(
          label:
            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
        ) {
          Divider().padding(.vertical, 4)
          
          HStack(alignment: .center, spacing: 10) {
            Image("logo")
              .resizable()
              .scaledToFit()
              .frame(width: 80, height: 80)
              .cornerRadius(9)
            
            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
              .font(.footnote)
          }
        }
    }
}


struct SettingsAboutSectionView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsAboutSectionView()
    }
}
