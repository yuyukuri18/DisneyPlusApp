//
//  LogoHeaderView.swift
//  DisneyPulsClone
//
//  Created by cmStudent on 2022/09/02.
//

import SwiftUI

struct LogoHeaderView: View {
    var body: some View {
        Image("logo")
            .resizable()
            .scaledToFit()
    }
}

struct LogoHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackgroundView()
            LogoHeaderView()
        }
    }
}
