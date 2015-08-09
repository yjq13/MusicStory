//
//  GameInfoVo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/10.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation
class GameInfoVo {
    var perfectNum:Int
    var greatNum:Int
    var badNum:Int
    var missNum:Int
    var combo:[Int]
    init(perfectNum:Int,greatNum:Int,badNum:Int,missNum:Int,combo:[Int]){
        self.perfectNum=perfectNum
        self.greatNum=greatNum
        self.badNum=badNum
        self.missNum=missNum
        self.combo=combo
    }
}