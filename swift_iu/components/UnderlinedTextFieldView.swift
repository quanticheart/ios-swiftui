//
//  UnderlinedTextFieldView.swift
//  swift_iu
//
//  Created by Jonn Alves on 30/12/22.
//

import SwiftUI

struct UnderlinedTextFieldView: View {
    @State var text = ""
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search", text: $text)
            }.underlineTextField()
        }
    }
}

struct UnderlinedTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        UnderlinedTextFieldView()
    }
}

extension Color {
    static let darkPink = Color(red: 208 / 255, green: 45 / 255, blue: 208 / 255)
}
extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .foregroundColor(.darkPink)
            .padding(10)
    }
}
