//
//  MusicInfoPo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/9.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation
class BuyMusicPo {
    var ID:String
    var price:Int
    var name:String
    var imagePath:String
    var difficulty:Int
    var musicLV:Int
    var ifBought:Bool
    init(ID:String,price:Int,name:String,imagePath:String,difficulty:Int,lv:Int,ifBought:Bool){
        self.ID=ID
        self.difficulty=difficulty
        self.name=name
        self.price=price
        self.musicLV=lv
        self.imagePath=imagePath
        self.ifBought=ifBought
    }
    func createVo()->BuyMusicVo{
        var vo:BuyMusicVo = BuyMusicVo(ID: self.ID, price: self.price, name: self.name, imagePath: self.imagePath, difficulty: self.difficulty, lv: self.musicLV, ifBought: self.ifBought)
        return vo
    }
}