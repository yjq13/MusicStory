//
//  bl_Music_CountInfo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation

class bl_Music_CountInfo {
    func countMoneyByGame(vo:GameInfoVo)->Int{
        var score:Int = 0
        var perfect = vo.perfectNum
        var great = vo.greatNum
        var bad = vo.badNum
        var miss  = vo.missNum
        var combo = vo.combo
        score = perfect*20+great*10+bad
        for comboE in combo{
            score = score + comboE*5
        }
        return score
    }
}