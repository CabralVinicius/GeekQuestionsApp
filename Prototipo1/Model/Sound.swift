//
//  Sound.swift
//  Prototipo1
//
//  Created by Lucas Real Dias on 01/05/23.
//

// Sound import
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.numberOfLoops = -1
            audioPlayer?.play()
        } catch {
            print("Error")
        }
    }
}
