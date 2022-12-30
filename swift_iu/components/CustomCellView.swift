//
//  CustomCellView.swift
//  swift_iu
//
//  Created by Jonn Alves on 30/12/22.
//

import SwiftUI

import SwiftUI

struct CustomCellView: View {
    var body: some View {
        ZStack {
            FeaturedContentCard()
                .frame(minHeight: 100)
        }.padding()
    }
}

struct FeaturedContentCard: View {
    var body: some View {
        VStack {
            ImageWithTextOverlayView(image: "large_image", text: "My experience with EAP and Income Protection")
              ContentCardSummary(text: "Research shows that our social enviroment significantly impacts our biology")
              ContentCardMetaView(readTime: "10 min read", name: "Jessica Bell")
        }
        .padding(.bottom, 16)
        .background(Color.white)
        .feedItemContainer()
    }
}


struct ImageWithTextOverlayView: View {
    
    private(set) var image: String
    private(set) var text: String
    
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(minWidth: 0, maxWidth: .infinity)
            .overlay(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6536279966)), Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0))]), startPoint: .bottom, endPoint: .top))
            .overlay(
                Text(text)
                    .foregroundColor(Color.white)
                    .font(.title)
                    .padding(),
                alignment: .bottomLeading
            )
    }
}

struct ContentCardSummary: View {
    private(set) var text: String
    var body: some View {
        Text(text)
          .frame(maxWidth: .infinity, alignment: .leading)
          .padding()
          .foregroundColor(Color(#colorLiteral(red: 0.2901960784, green: 0.2901960784, blue: 0.2901960784, alpha: 1)))
      }
}


struct FeedItemContainer: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .customShadow()
    }
}

struct BenefexShadow: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color(.init(red: 0.18, green: 0.18, blue: 0.18, alpha: 0.16)).opacity(1), radius: 4, x: 0, y: 1)
            .shadow(color: Color(.init(red: 0.18, green: 0.18, blue: 0.18, alpha: 0.1)).opacity(1), radius: 60, x: 0, y: 4)
            .shadow(color: Color(.init(red: 0.18, green: 0.18, blue: 0.18, alpha: 0.16)).opacity(1), radius: 4, x: 0, y: 1)
    }
}


extension View {
    
    func customShadow() -> some View {
        self.modifier(BenefexShadow())
    }
    
    func feedItemContainer() -> some View {
        self.modifier(FeedItemContainer())
    }
}

struct AvatarView: View {
    var body: some View {
        Image("profile_pic")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 40, height: 40)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: 2)
            )
            .customShadow()
    }
}

struct ContentCardMetaView: View {
    private(set) var readTime: String
    private(set) var name: String
    var body: some View {
        HStack(spacing: 8) {
            AvatarView()
            VStack(alignment: .leading) {
                Text(readTime)
                    .font(.subheadline)
                    .foregroundColor(Color(#colorLiteral(red: 0.2901960784, green: 0.2901960784, blue: 0.2901960784, alpha: 1)))
                Text(name)
                    .fontWeight(.medium)
                    .foregroundColor(Color(#colorLiteral(red: 0.2980392157, green: 0.1843137255, blue: 0.737254902, alpha: 1)))
            }
            Spacer()
            Button(action: { }) {
                Image(systemName: "ellipsis")
                    .font(.system(size: 24))
                    .foregroundColor(Color(#colorLiteral(red: 0.7803921569, green: 0.7803921569, blue: 0.7803921569, alpha: 1)))
                    .rotationEffect(.degrees(-90))
            }
            
        }
    }
}

struct CustomCellView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCellView()
    }
}
