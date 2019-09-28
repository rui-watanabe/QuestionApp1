//
//  ChangeColor.swift
//  QuestionApp1
//
//  Created by watar on 2019/09/28.
//  Copyright © 2019 rui watanabe. All rights reserved.
//

import Foundation
import UIKit

class ChangeColor{
    
    func changeColor(topR:CGFloat,topG:CGFloat,topB:CGFloat,topAlpha:CGFloat,buttomR:CGFloat,buttomG:CGFloat,buttomB:CGFloat,buttomAlpha:CGFloat)->CAGradientLayer{
        
        //グラデーションの開始色を決めていく
        
        let topColor = UIColor(red: topR, green: topG, blue: topB, alpha: topAlpha)
        
        //グラデーションの開始色を決めていく
        
        let buttomColor = UIColor(red: buttomR, green: buttomG, blue: buttomB, alpha: buttomAlpha)
        
        //グラデーションの色を配列で管理
        
        let gradientColor = [topColor.cgColor,buttomColor.cgColor]

        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = gradientColor
        
        return gradientLayer
    }
    
}
