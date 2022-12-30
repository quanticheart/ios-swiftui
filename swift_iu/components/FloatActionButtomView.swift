//
//  FloatActionButtomView.swift
//  swift_iu
//
//  Created by Jonn Alves on 30/12/22.
//

import SwiftUI

struct FloatActionButtomView: View {
    var body: some View {
        Button(action: {}) {
            Image(systemName: "chevron.backward")
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .clipShape(Circle())
                .shadow(radius: 8)
        }
    }
}

struct FloatActionButtomView_Previews: PreviewProvider {
    static var previews: some View {
        FloatActionButtomView()
    }
}
