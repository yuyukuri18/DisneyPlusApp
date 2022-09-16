//
//  ChannelView.swift
//  DisneyPulsClone
//
//  Created by cmStudent on 2022/09/02.
//

import SwiftUI

struct ChannelView: View {
    
    private var channels = Channel.allCases
    
    var body: some View {
        HStack {
            ForEach(channels, id: \.self) { channel in
                Button(action: {}) {
                    Image(channel.rawValue)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }.background(
                    LinearGradient(gradient: Gradient(colors: [ColorConstants.darkBluishGrayColor, ColorConstants.darkGrayColor]), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(5)
                .shadow(radius: 10)
            }
        }.padding()
    }
}

struct ChannelView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackgroundView()
            ChannelView()
        }
    }
}
