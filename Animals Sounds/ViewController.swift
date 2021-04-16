//
//  ViewController.swift
//  Animals Sounds
//
//  Created by Caio Fernandes on 15/04/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBAction func playDog(_ sender: Any) {
        playSound(soundName: "cao")
    }
    
    @IBAction func playLion(_ sender: Any) {
        playSound(soundName: "leao")
    }
    
    @IBAction func playSheep(_ sender: Any) {
        playSound(soundName: "ovelha")
    }
    
    @IBAction func playCat(_ sender: Any) {
        playSound(soundName: "gato")
    }
    
    @IBAction func playMonkey(_ sender: Any) {
        playSound(soundName: "macaco")
    }
    
    @IBAction func playCow(_ sender: Any) {
        playSound(soundName: "vaca")
    }
    
    func playSound(soundName: String) {
        if let path = Bundle.main.path(forResource: soundName, ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
                player.play()
            } catch {
                
            }
        }
    }
    
    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

