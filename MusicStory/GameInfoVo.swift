//
//  GameInfoVo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/9.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//游戏信息

import Foundation
class GameInfoVo {
    var score:Int
    var combo:Int
    var evaluation:String
    init(score:Int,combo:Int,evaluation:String){
        self.score=score
        self.combo=combo
        self.evaluation=evaluation
    }
}