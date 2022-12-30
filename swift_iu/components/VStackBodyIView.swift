//
//  VStackBodyIView.swift
//  swift_iu
//
//  Created by Jonn Alves on 29/12/22.
//

import SwiftUI

struct VStackBodyView<Content: View>: View {
    
    var content: () -> Content
    var alignment: Alignment
    
    init(alignment: Alignment = .top, @ViewBuilder content: @escaping () -> Content) {
        self.content = content
        self.alignment = alignment
    }
    
    var body: some View {
        VStack(content: content).frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: alignment
        ).padding()
    }
}

struct VStackBodyView_Previews: PreviewProvider {
    static var previews: some View {
        VStackBodyView(alignment: .center) {
            Text("Text")
        }
    }
}

protocol ContainerView: View {
    associatedtype Content
    init(alignment: Alignment, content: @escaping () -> Content)
}

extension ContainerView {
    init(alignment: Alignment = .center, @ViewBuilder _ content: @escaping () -> Content) {
        self.init(alignment: alignment, content: content)
    }
}
