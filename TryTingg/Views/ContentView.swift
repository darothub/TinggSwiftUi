//
//  ContentView.swift
//  TryTingg
//
//  Created by Darot on 20/04/2022.
//
import Combine
import SwiftUI

struct ContentView: View {
    var body: some View {
        LoginView()
            .navigationTitle("Login")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

