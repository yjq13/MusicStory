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
    var volume:Double
    var music:Bool
    var sound:Bool
    var speed:Int
    init(storyStep:Int,lv:Int,money:Int,volume:Double,music:Bool,sound:Bool,speed:Int){
        self.lv=lv
        self.storyStep=storyStep
        self.money=money
        self.sound=sound
        self.music=music
        self.volume=volume
        self.speed=speed
    }
    
    func createPo()->AllInfoPo{
        var po:AllInfoPo = AllInfoPo(storyStep: self.storyStep, lv: self.lv, money: self.money, volume: self.volume, music: self.music , sound: self.sound,speed:self.speed)
        return po
    }
}