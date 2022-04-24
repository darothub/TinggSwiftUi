//
//  AnimationEffect.swift
//  TryTingg
//
//  Created by Darot on 23/04/2022.
//

import SwiftUI

struct AnimationEffect : ViewModifier{
    func body(content: Content) -> some View {
        content
            .rotationEffect(Angle(degrees: 360))
            .animation(Animation.easeInOut(duration: .infinity), value: true)
    }
}

extension View {
    func rotation<Style:ViewModifier>(_ style:Style) -> some View{
        ModifiedContent(content: self, modifier: style)
    }
}
