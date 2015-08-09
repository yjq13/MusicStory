//
//  AllInfoVo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/9.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//金币等级记录

import Foundation
class AllInfoVo {
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
    func createPo()->AllInfoPo{
        var po:AllInfoPo = AllInfoPo(storyStep: self.storyStep, lv: self.lv, state: self.state, money: self.money)
        return po
    }
}