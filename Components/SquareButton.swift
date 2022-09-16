//
//  SquareButton.swift
//  DisneyPulsClone
//
//  Created by cmStudent on 2022/09/02.
//
import SwiftUI

struct SquareButton: View {
    var searchCategory: SearchCategory
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: searchCategory.systemImage)
            Text(searchCategory.title)
        }
        .padding()
        .frame(width: 100, height: 100)
        .foregroundColor(.white)
        .background(ColorConstants.darkBluishGrayColor)
        .cornerRadius(10)
        .shadow(color: ColorConstants.darkGrayColor, radius: 5, x: 5, y: 5)
        .shadow(color: ColorConstants.darkGrayColor, radius: 5, x: -5, y: -5)
    }
}

struct SquareButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackgroundView()
            SquareButton(searchCategory: SearchCategory(title: "Original", systemImage: "star.fill"))
        }
    }
}
