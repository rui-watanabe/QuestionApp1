//
//  withOutMP3.swift
//  QuestionApp1
//
//  Created by watar on 2019/09/27.
//  Copyright © 2019 rui watanabe. All rights reserved.
//

import Foundation

class withOutMP3: SoundFile{
    
    override func playSound(fileName: String, extensionName: String) {
        
        if extensionName == "mp3"{
            print("このファイルは再生できません")
        }
        
        player?.stop()
    }
    
}
