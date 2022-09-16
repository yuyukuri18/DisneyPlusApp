//
//  SplashView.swift
//  DisneyPulsClone
//
//  Created by cmStudent on 2022/08/26.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isActive = false
    
    var body: some View {
        ZStack {
            Color.black
            VStack {
                if isActive {
                    ContentView(tabViewRouter: TabViewRouter())
                } else {
                    SplashAnimationView()
                        .frame(width: 300, height: 300)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    withAnimation {
                        self.isActive.toggle()
                    }
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
