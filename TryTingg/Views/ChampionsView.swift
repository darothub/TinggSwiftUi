//
//  ChampionsView.swift
//  TryTingg
//
//  Created by Darot on 24/04/2022.
//

import SwiftUI

struct ChampionsView: View {
    let champions:[Champion]
    init(){
        champions = Champion.champions()
        print("\(champions)")
    }
    var body: some View {
        List{
            Section(header: Text("Champions")){
                ForEach(champions, id: \.id){champion in
                    NavigationLink(destination: DetailView(listItem: champion)){
                        ItemRow(listItem: champion)
                    }
                }
            }
        }
    }
}

struct ChampionsView_Previews: PreviewProvider {
    static var previews: some View {
        ChampionsView()
    }
}
