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
    var sound:Bool
    init(storyStep:Int,lv:Int,money:Int,sound:Bool){
        self.lv=lv
        self.storyStep=storyStep
        self.money=money
        self.sound=sound
    }
    
    func createPo()->AllInfoPo{
        var po:AllInfoPo = AllInfoPo(storyStep: self.storyStep, lv: self.lv, money: self.money,sound: self.sound)
        return po
    }
}