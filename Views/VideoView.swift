//
//  VideoView.swift
//  DisneyPulsClone
//
//  Created by cmStudent on 2022/09/02.
//

import SwiftUI
import AVKit

struct VideoView: View {
    
    let player: AVPlayer
    
    init(videoUrl: String) {
        self.player = AVPlayer(url: URL(string: videoUrl)!)
    }
    
    var body: some View {
        VideoPlayer(player: player)
            .onAppear {
                player.play()
            }
    }
}
