//
//  ButtomProjectView.swift
//  swift_iu
//
//  Created by Jonn Alves on 29/12/22.
//

import SwiftUI

struct ProjectButtonStyle: ButtonStyle {
    let backgroundColor: Color
    let foregroundColor: Color
    let isDisabled: Bool
    
    func makeBody(configuration: Self.Configuration) -> some View {
        let currentForegroundColor = isDisabled || configuration.isPressed ? foregroundColor.opacity(0.3) : foregroundColor
        return configuration.label
            .foregroundColor(currentForegroundColor)
            .background(isDisabled || configuration.isPressed ? backgroundColor.opacity(0.7) :backgroundColor)
            .cornerRadius(6)
            .scaleEffect(configuration.isPressed ? 1.02 : 1)
            .overlay(RoundedRectangle(cornerRadius: 6).stroke(currentForegroundColor, lineWidth: 1))
            .font(Font.system(size: 19, weight: .semibold))
            .frame(width: .infinity, height: 38)
        
    }
}
