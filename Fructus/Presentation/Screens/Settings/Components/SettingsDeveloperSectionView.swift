//
//  SettingsDeveloperSectionView.swift
//  Fructus
//
//  Created by Sergio Sánchez Sánchez on 30/12/23.
//

import SwiftUI

struct SettingsDeveloperSectionView: View {
    var body: some View {
        GroupBox(
          label:
          SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
        ) {
          SettingsRowView(name: "Developer", content: "Sergio Sánchez Sánchez")
          SettingsRowView(name: "Designer", content: "Robert Petras")
          SettingsRowView(name: "Compatibility", content: "iOS 14")
          SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
          SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
          SettingsRowView(name: "SwiftUI", content: "2.0")
          SettingsRowView(name: "Version", content: "1.1.0")
        }
    }
}

struct SettingsDeveloperSectionView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsDeveloperSectionView()
    }
}
