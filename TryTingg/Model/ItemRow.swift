//
//  ItemRow.swift
//  TryTingg
//
//  Created by Darot on 24/04/2022.
//

import SwiftUI

struct ItemRow: View {
    let listItem:ListItem
    var body: some View {
        HStack(alignment: .top, spacing: 10){
            AsyncImage(url: URL(string: listItem.picture)) { image in
                image.resizable()
                    .scaledToFill()
                    .frame(width: 25, height: 25, alignment: Alignment.leading)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .clipShape(Circle())
                    .padding(3)
            } placeholder: {
                Image("cellulant")
                    .resizable()
                    .frame(width: 25, height: 25, alignment: Alignment.leading)
                    .scaledToFit()
                    .clipShape(Circle())
                    .padding(3)
            }
            

            VStack(alignment: .leading){
                Text(listItem.name)
                    .font(.title3)
                Text(listItem.position)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(listItem: example()[0])
    }
}
