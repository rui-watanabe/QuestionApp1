//
//  imagesModel.swift
//  QuestionApp1
//
//  Created by watar on 2019/09/27.
//  Copyright © 2019 rui watanabe. All rights reserved.
//

import Foundation

class imagesModel{
    
    //画像名を取得して、画像名が人間かそうでないかフラグによって判定する機能
    
    let imageText:String
    let answer:Bool
    
    init(imageName:String,correctOrNot:Bool){
        
        imageText = imageName
        
        answer = correctOrNot
    }
    
}
