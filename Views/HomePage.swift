//
//  HomePage.swift
//  DisneyPulsClone
//
//  Created by cmStudent on 2022/09/02.
//
import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack {
            GradientBackgroundView()
            ScrollView {
                VStack {
                    LogoHeaderView()
                        .frame(maxWidth: 100)
                        .padding(.top, 40)
                    
                    CarouselView()
                    ChannelView()
                        .frame(width: UIScreen.main.bounds.width)
                    
                    ForEach(MovieSection.movieSections) { section in
                        MovieSectionView(movieSection: section)
                            .frame(width: UIScreen.main.bounds.width)
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}

