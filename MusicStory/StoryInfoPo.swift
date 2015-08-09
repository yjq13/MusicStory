//
//  StoryInfoPo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/9.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation
class StoryInfoPo {
    var step:Int
    var target:String
    var MusicID:String
    var LvNeed:Int
    init(step:Int,target:String,MusicID:String,LvNeed:Int){
        self.step=step
        self.target=target
        self.MusicID=MusicID
        self.LvNeed=LvNeed
    }
    func createVo()->StoryInfoVo{
        var vo:StoryInfoVo = StoryInfoVo(step: self.step, target: self.target, MusicID: self.MusicID, LvNeed: self.LvNeed)
        return vo
    }
}