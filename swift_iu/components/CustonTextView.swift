//
//  CustonTextView.swift
//  swift_iu
//
//  Created by Jonn Alves on 29/12/22.
//

import SwiftUI

struct CustonTextView: View {
    var placeholder: String
    
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    
    @State var text = ""
    var body: some View {
        ZStack(alignment: .leading) {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
                    .frame(width: .infinity, height: 36)

            }.modifier(customViewModifier(roundedCornes: 6, startColor: .orange, endColor: .purple, textColor: .white))
                .frame(width: .infinity, height: 48, alignment: .center)

            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(.white)
                    .padding(.leading, 48)
                    .font(.custom("Open Sans", size: 18))
            }
        }

    }
}

struct CustonTextView_Previews: PreviewProvider {
    static var previews: some View {
        CustonTextView(placeholder: "Search...")
    }
}

struct customViewModifier: ViewModifier {
    var roundedCornes: CGFloat
    var startColor: Color
    var endColor: Color
    var textColor: Color
    
    func body(content: Content) -> some View {
        content
            .padding(.leading, 20)
            .background(LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(roundedCornes)
            .padding(3)
            .foregroundColor(textColor)
            .overlay(RoundedRectangle(cornerRadius: roundedCornes)
                .stroke(LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.5))
            .font(.custom("Open Sans", size: 18))
            .shadow(radius: 10)

    }
}
