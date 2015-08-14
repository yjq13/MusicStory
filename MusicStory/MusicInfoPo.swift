//
//  MusicRecordPo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/9.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation
class MusicInfoPo {
    var score:Int
    var combo:Int
    var ID:String
    var name:String
    var imagePath:String
    var difficulty:Int
    var musicLV:Int
    var evaluation:String
    init(score:Int,combo:Int,evaluation:String,ID:String,difficulty:Int,name:String,lv:Int,imagePath:String){
        self.score=score
        self.combo=combo
        self.evaluation=evaluation
        self.ID=ID
        self.difficulty=difficulty
        self.name=name
        self.musicLV=lv
        self.imagePath=imagePath
    }
    
    func createVo()->MusicInfoVo{
        var vo:MusicInfoVo = MusicInfoVo(score: self.score, combo: self.combo, evaluation: self.evaluation, ID: self.ID, difficulty: self.difficulty, name: self.name, lv: self.musicLV, imagePath: self.imagePath)
        return vo
    }

}