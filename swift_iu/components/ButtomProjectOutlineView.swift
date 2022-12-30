//
//  ButtomProjectView.swift
//  swift_iu
//
//  Created by Jonn Alves on 29/12/22.
//

import SwiftUI

struct ButtomProjectOutlineView: View {
    
    private static let buttonHorizontalMargins: CGFloat = 20
    
    var backgroundColor: Color
    var foregroundColor: Color
    
    private let title: String
    private let disabled: Bool
    private let action: () -> Void
    
    init(title: String,
         disabled: Bool = false,
         color: Color = Color.blue,
         action: @escaping () -> Void) {
        
        self.backgroundColor = Color.white
        self.foregroundColor = color
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

struct ButtomProjectOutlineView_Previews: PreviewProvider {
    static var previews: some View {
        ButtomProjectOutlineView(title: "test") {
            
        }
    }
}
