//
//  BottomBar.swift
//  DisneyPulsClone
//
//  Created by cmStudent on 2022/08/26.
//

import SwiftUI

struct BottomBar: View {
    var body: some View {
        TabView {
            NavigationView {
                ZStack{
                    Color("BackColor")
                        .ignoresSafeArea(.all)
                    Text("Here for Stories and Timelines")
                        .foregroundColor(Color.white)
 
                }
            }
            .tabItem {
                IconView(systemName: "house")
                Text("Home")
            }
            IconView(systemName: "magnifyingglass")
                .tabItem {
                    IconView(systemName: "magnifyingglass")
                    Text("Search")
                }
            IconView(systemName: "plus.app")
                .tabItem {
                    IconView(systemName: "plus.app")
                    Text("Download")
                        .foregroundColor(Color.red)
                }
            IconView(systemName: "person")
                .tabItem {
                    IconView(systemName: "person")
                    Text("Profile")
                }
        }
        .edgesIgnoringSafeArea(.all)
        // 選択されているアイコンの色を黒に変更
        .accentColor(.white)
        
    }
}

struct IconView: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color.white)
    }
}

struct BottomBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomBar()
    }
}
