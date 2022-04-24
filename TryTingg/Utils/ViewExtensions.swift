//
//  ViewExtensions.swift
//  TryTingg
//
//  Created by Darot on 23/04/2022.
//

import SwiftUI

extension View {
    @ViewBuilder func hiddenConditionally(isHidden: Binding<Bool>) -> some View {
        isHidden.wrappedValue ? self  :  self.hidden() as? Self
    }
}
