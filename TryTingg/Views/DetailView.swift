//
//  DetailView.swift
//  TryTingg
//
//  Created by Darot on 24/04/2022.
//

import SwiftUI

struct DetailView: View {
    let listItem:ListItem
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: listItem.picture)) { image in
                image.resizable()
                    .scaledToFit()
                    .padding(.horizontal, 40)
        
            } placeholder: {
                Image("cellulant")
                    .resizable()
                    .frame(width: 25, height: 25, alignment: Alignment.leading)
                    .scaledToFit()
                    .clipShape(Circle())
                    .padding(.horizontal, 50)
            }
            Text(listItem.name)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .center)
            Text(listItem.position)
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .center)
            Text(listItem.description)
                .font(.system(size: 16))
                .foregroundColor(.gray)
                .lineLimit(nil)
                .frame(maxWidth: .infinity, alignment: .center)
                .multilineTextAlignment(.center)
                .padding(EdgeInsets(top: 10, leading: 30, bottom: 0, trailing: 30))
            
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(listItem: example()[0])
    }
}
