//
//  ProfileView.swift
//  DisneyPulsClone
//
//  Created by cmStudent on 2022/09/02.
//

import SwiftUI

struct ProfileView: View {
    
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().backgroundColor = .clear
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack {
            GradientBackgroundView()
            VStack {
                profileView
                editProfile
                profileOptions
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
    }
    
    private var profileView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(Profile.sampleProfiles) { profile in
                    ProfilePic(profile: profile)
                }
            }
        }.frame(maxHeight: 160).padding(.top, 40)
    }
    
    private var editProfile: some View {
        Button(action: {}) {
            Text("EDIT PROFILE")
                .bold()
        }
        .foregroundColor(.white)
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
        .background(RoundedRectangle(cornerRadius: 5).fill(Color.gray.opacity(0.8)))
    }
    
    private var listItems = ["Watchlist", "App Settings", "Account", "Legal", "Help", "Log out"]
    
    private var profileOptions: some View {
        List {
            ForEach(listItems, id: \.self) { item in
                VStack(alignment: .leading) {
                    Text(item)
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                    
                    Rectangle().fill(Color.white)
                        .frame(height: 1)
                }
            }
            .listRowBackground(Color.clear)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
