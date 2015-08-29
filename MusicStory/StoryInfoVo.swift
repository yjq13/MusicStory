//
//  StoryInfoVo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/9.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//故事情节记录

import Foundation
class StoryInfoVo {
    var step:Int
    var target:String
    var MusicID:String
    var LvNeed:Int
    var description:String
    init(step:Int,target:String,MusicID:String,LvNeed:Int,description:String){
        self.step=step
        self.target=target
        self.MusicID=MusicID
        self.LvNeed=LvNeed
        self.description=description
    }
}