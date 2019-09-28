//
//  Human.swift
//  QuestionApp1
//
//  Created by watar on 2019/09/27.
//  Copyright © 2019 rui watanabe. All rights reserved.
//

import Foundation

class Human:Animal{
    
    override func breath() {
        super.breath()
        
        profile()
    }
    
    func profile(){
        print("may")
    }
}
