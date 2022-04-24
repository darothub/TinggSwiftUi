//
//  LeadershipView.swift
//  TryTingg
//
//  Created by Darot on 24/04/2022.
//

import SwiftUI

struct LeadershipView: View {
    let leaderships:[Leadership]
    init(){
        leaderships = Leadership.leaderships()
        print("\(leaderships)")
    }
    var body: some View {
        List{
            Section(header: Text("Leaders")){
                ForEach(leaderships, id: \.id){leader in
                    NavigationLink(destination: DetailView(listItem: leader)){
                        ItemRow(listItem: leader)
                    }
                }
            }
        }
    }
}

struct LeadershipView_Previews: PreviewProvider {
    static var previews: some View {
        LeadershipView()
    }
}
