//
//  AllInfoPo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/9.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation
class AllInfoPo {
    var storyStep:Int
    var lv:Int
    var money:Int
    var state:String
    init(storyStep:Int,lv:Int,state:String,money:Int){
        self.lv=lv
        self.state=state
        self.storyStep=storyStep
        self.money=money
    }
    func createVo()->AllInfoVo{
        var vo:AllInfoVo = AllInfoVo(storyStep: self.storyStep, lv: self.lv, state: self.state, money: self.money)
        return vo
    }
}