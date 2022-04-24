//
//  TextFieldStyle.swift
//  TryTingg
//
//  Created by Darot on 23/04/2022.
//

import SwiftUI

struct TextFieldStyle : ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.title3)
            .padding(EdgeInsets(top: 12, leading: 6, bottom: 12, trailing: 6))
            .cornerRadius(5)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(lineWidth: 0.3)
            )
            .padding(.horizontal, 40)
    }
}

extension TextField {
    func textFieldStyle<Style:ViewModifier>(_ style:Style) -> some View{
        ModifiedContent(content: self, modifier: style)
    }
}
