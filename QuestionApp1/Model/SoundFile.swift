//
//  SoundFile.swift
//  QuestionApp1
//
//  Created by watar on 2019/09/27.
//  Copyright © 2019 rui watanabe. All rights reserved.
//

import Foundation
import AVFoundation

class SoundFile{
    
    var player:AVAudioPlayer?
    
    func playSound(fileName:String,extensionName:String){
        
        //再生する
        let soundURL = Bundle.main.url(forResource: fileName, withExtension: extensionName)
        do {
            //効果音を鳴らす
            player = try AVAudioPlayer(contentsOf: soundURL!)
            player?.play()
        } catch  {
            print("エラーです")
        }
        
    }
    
    
}
