//
//  GradientTextFiledView.swift
//  swift_iu
//
//  Created by Jonn Alves on 29/12/22.
//

import SwiftUI

struct GradientTextFiledView: View {
    
    @State var name = ""

    var body: some View {
        TextField("Name", text: $name)
                        .textFieldStyle(
                            GradientTextFieldBackground(
                                systemImageString: "person"
                            )
                        )
    }
}

struct GradientTextFieldBackground: TextFieldStyle {
    
    let systemImageString: String
    
    // Hidden function to conform to this protocol
    func _body(configuration: TextField<Self._Label>) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(
                    LinearGradient(
                        colors: [
                            .red,
                            .blue
                        ],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .frame(height: 40)
            
            HStack {
                Image(systemName: systemImageString)
                // Reference the TextField here
                configuration
            }
            .padding(.leading)
            .foregroundColor(.gray)
        }
    }
}


struct GradientTextFiledView_Previews: PreviewProvider {
    static var previews: some View {
        GradientTextFiledView()
    }
}
