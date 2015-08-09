//
//  data_Music_GetInfo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation

class data_Music_getInfo:MusicGetInfo_DataService {
    func getMusicInfoByID(ID: String) -> MusicInfoPo {
        var po :MusicInfoPo = MusicInfoPo(score: 0, combo: 0, evaluation: "", ID: "", difficity: 0, name: "", lv: 0, imagePath: "")
        return po
    }
    
    func getMusicInfoForBuy(ID: String) -> [BuyMusicPo] {
        //var Bpo :BuyMusicPo = BuyMusicPo(ID: "", price: 0, name: "", imagePath: "", difficity: 0, lv: 0, ifBought: true)
        var polist:[BuyMusicPo] = []
        //polist.append(Bpo)
        return polist
    }
}