//
//  BottonNavigationView.swift
//  swift_iu
//
//  Created by Jonn Alves on 30/12/22.
//

import SwiftUI

struct BottonNavigationView: View {
    var body: some View {
        TabView {
            VStack {
                Text("Hello, World!")
                Divider()
                Spacer()
                // Bleeds into TabView
                Rectangle()
                    .frame(height: 0)
                    .background(.thinMaterial)
            }
            .background(Color.purple)
            .tabItem {
                Text("Tab 1")
                Image(systemName: "wifi")
            }
        }
    }
}

struct BottonNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        BottonNavigationView()
    }
}
