//
//  AVPlayerDing.swift
//  Scrumdinger
//
//  Created by Zack Williams on 28/07/2024.
//

import Foundation
import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else { fatalError("Failed to find sound file")}
        return AVPlayer(url: url)
    }()
}
