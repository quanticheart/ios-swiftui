//
//  SeachView.swift
//  swift_iu
//
//  Created by Jonn Alves on 29/12/22.
//

import SwiftUI

struct SeachView: View {
    @State var isLinkActive = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        NavigationView {
            VStack(spacing: 0){
                NavbarView(title: "Search View"){
                    self.presentationMode.wrappedValue.dismiss()
                }
                VStackBodyView(alignment: .center) {
                    CustonTextView(placeholder: "Type")
                    NavigationLink(destination: SeachView(), isActive: $isLinkActive) {
                        ButtomProjectView(title: "Search") {
                          
                        }
                    }.hiddenNavigationBarStyle()
                }
            }
            .hiddenNavigationBarStyle()
            
        }
    }
}

struct SeachView_Previews: PreviewProvider {
    static var previews: some View {
        SeachView()
    }
}

struct HiddenNavigationBar: ViewModifier {
    func body(content: Content) -> some View {
        content
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("")
    }
}

extension View {
    func hiddenNavigationBarStyle() -> some View {
        modifier( HiddenNavigationBar() )
    }
    
    func hiddenBackButton() -> some View {
         self.navigationBarBackButtonHidden(true)
    }

}
