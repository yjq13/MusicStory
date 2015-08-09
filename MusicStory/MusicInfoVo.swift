//
//  MusicRecordVo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/9.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation
class MusicInfoVo {
    var score:Int
    var combo:Int
    var ID:String
    var name:String
    var imagePath:String
    var difficilty:Int
    var musicLV:Int
    var evaluation:String
    init(score:Int,combo:Int,evaluation:String,ID:String,difficity:Int,name:String,lv:Int,imagePath:String){
        self.score=score
        self.combo=combo
        self.evaluation=evaluation
        self.ID=ID
        self.difficilty=difficity
        self.name=name
        self.musicLV=lv
        self.imagePath=imagePath
    }
    func createPo()->MusicInfoPo{
        var po:MusicInfoPo = MusicInfoPo(score: self.score, combo: self.combo, evaluation: self.evaluation, ID: self.ID, difficity: self.difficilty, name: self.name, lv: self.musicLV, imagePath: self.imagePath)
        return po
    }
    
}