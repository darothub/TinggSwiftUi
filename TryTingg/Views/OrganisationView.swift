//
//  LeaderShipView.swift
//  TryTingg
//
//  Created by Darot on 24/04/2022.
//

import SwiftUI

struct OrganisationView: View {
    var body: some View {
        TabView{
           LeadershipView().tabItem {
                Label("Leaders", systemImage: "person.3.fill")
            }
           ChampionsView().tabItem {
                Label("Champions", systemImage: "star")
            }
           MapView().tabItem {
                Label("Overview", systemImage: "globe.europe.africa.fill")
            }
        }
        .navigationTitle("Organisations")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OrganisationView_Previews: PreviewProvider {
    static var previews: some View {
        OrganisationView()
    }
}
