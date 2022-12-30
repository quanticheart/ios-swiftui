//
//  ButtomProjectView.swift
//  swift_iu
//
//  Created by Jonn Alves on 29/12/22.
//

import SwiftUI

struct ButtomProjectView: View {
    
    private static let buttonHorizontalMargins: CGFloat = 20
    
    var backgroundColor: Color
    var foregroundColor: Color
    
    private let title: String
    private let disabled: Bool
    private let action: () -> Void
    
    init(title: String,
         disabled: Bool = false,
         backgroundColor: Color = Color.blue,
         foregroundColor: Color = Color.white,
         action: @escaping () -> Void) {
        
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.title = title
        self.action = action
        self.disabled = disabled
    }
    
    var body: some View {
        Button(action:self.action) {
            Text(self.title)
                .frame(maxWidth:.infinity, maxHeight: .infinity)
        }
        .buttonStyle(ProjectButtonStyle(backgroundColor: backgroundColor,
                                        foregroundColor: foregroundColor,
                                        isDisabled: disabled))
        .disabled(self.disabled)
    }
}

struct ButtomProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ButtomProjectView(title: "test") {
            
        }
    }
}
