//
//  imagesList.swift
//  QuestionApp1
//
//  Created by watar on 2019/09/27.
//  Copyright © 2019 rui watanabe. All rights reserved.
//

import Foundation

class ImagesList{
    
    var list = [imagesModel]()
    
    init(){
        
        list.append(imagesModel(imageName: "0", correctOrNot: true))
        list.append(imagesModel(imageName: "1", correctOrNot: false))
        list.append(imagesModel(imageName: "2", correctOrNot: false))
        list.append(imagesModel(imageName: "3", correctOrNot: false))
        list.append(imagesModel(imageName: "4", correctOrNot: true))
        list.append(imagesModel(imageName: "5", correctOrNot: false))
        list.append(imagesModel(imageName: "6", correctOrNot: true))
        list.append(imagesModel(imageName: "7", correctOrNot: true))
        list.append(imagesModel(imageName: "8", correctOrNot: false))
        list.append(imagesModel(imageName: "9", correctOrNot: true))
        list.append(imagesModel(imageName: "10", correctOrNot: true))

        
    }
    
    
}
