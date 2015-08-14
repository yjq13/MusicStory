//
//  petPo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/10.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation
class PetPo {
    var state:Int
    var experince:Int
    var lv:Int
    init(state:Int,experince:Int,lv:Int){
        self.state=state
        self.experince=experince
        self.lv=lv
    }
    
    func createVo()->PetVo{
        var vo:PetVo = PetVo(state: self.state, experince: self.experince, lv: self.lv)
        return vo
    }
}