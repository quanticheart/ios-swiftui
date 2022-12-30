//
//  NavbarView.swift
//  swift_iu
//
//  Created by Jonn Alves on 29/12/22.
//

import SwiftUI

struct NavbarView: View {
    
    private let title: String
    private let action: (()->())?
    
    init(title: String,action: (()->())? = nil) {
        self.title = title
        self.action = action
    }
    
    var body:  some View {
        HStack {
            Rectangle()
                .frame(width: 0)
            Button(action: action ?? {}) {
                Image(systemName: "chevron.backward")
                    .padding()
                    .foregroundColor(Color.white)
            }.isHidden(action == nil, remove: true)
            Text(title)
                .foregroundColor(Color.white)
                .font(.system(size: 14, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, action == nil ? 16: 0)
        }
        .background(Color.blue)
        .frame(width: .infinity, height: 56)
    }
}

struct NavbarView_Previews: PreviewProvider {
    static var previews: some View {
        NavbarView(title: "Test").previewLayout(.fixed(width: 350, height: 56))
    }
}

extension View {
    @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
        if hidden {
            if !remove {
                self.hidden()
            }
        } else {
            self
        }
    }
}
