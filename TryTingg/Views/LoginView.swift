//
//  LoginView.swift
//  TryTingg
//
//  Created by Darot on 23/04/2022.
//
import Combine
import SwiftUI

struct LoginView: View {
    @State var name:String = ""
    @State var pin:String = ""
    @State var showPinField = false
    @State var navigate = false
    @State var rotate = false
    var body: some View {
        VStack{
            Image("cellulant")
                .resizable()
                .frame(width: 80, height: 80, alignment: Alignment.center)
                .scaledToFit()
                .rotationEffect(Angle(degrees: rotate ? 360 : 0))
                .animation(Animation.linear(duration: 10).repeatForever(), value: rotate)
            TextField("Name", text: $name)
                .textFieldStyle(TextFieldStyle())
                .onReceive(Just(name)) { name in
                    showPinField = name.count > 4
                }
            TextField("Pin", text: $pin)
                .textFieldStyle(TextFieldStyle())
                .hiddenConditionally(isHidden: $showPinField)
            NavigationLink(destination: OrganisationView(), isActive: $navigate){
                Button(action: navigateTo){
                    Text(!showPinField ? "Enter name" : pin.isEmpty ? "Enter pin" : "Continue")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                }
                .cornerRadius(5)
                .padding(.horizontal, 40)
            }.onAppear {
                rotate.toggle()
            }
            
        }
    }
    func navigateTo() -> Void{
        if !pin.isEmpty {
            navigate = true
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
