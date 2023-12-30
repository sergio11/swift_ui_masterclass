//
//  RestartAppSectionView.swift
//  Fructus
//
//  Created by Sergio Sánchez Sánchez on 30/12/23.
//

import SwiftUI

struct RestartAppSectionView: View {
    
    @Binding var isOnboarding: Bool
    
    var body: some View {
        GroupBox(
          label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
        ) {
          Divider().padding(.vertical, 4)
          
          Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
            .padding(.vertical, 8)
            .frame(minHeight: 60)
            .layoutPriority(1)
            .font(.footnote)
            .multilineTextAlignment(.leading)
          
          Toggle(isOn: $isOnboarding) {
            if isOnboarding {
              Text("Restarted".uppercased())
                .fontWeight(.bold)
                .foregroundColor(Color.green)
            } else {
              Text("Restart".uppercased())
                .fontWeight(.bold)
                .foregroundColor(Color.secondary)
            }
          }
          .padding()
          .background(
            Color(UIColor.tertiarySystemBackground)
              .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
          )
        }
    }
    
}


struct RestartAppSectionView_Previews: PreviewProvider {
    static var previews: some View {
        RestartAppSectionView(isOnboarding: .constant(true))
    }
}
