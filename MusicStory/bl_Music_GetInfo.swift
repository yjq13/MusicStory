//
//  bl_Music_getInfo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015 yjq131250077. All rights reserved.
//

import Foundation

class bl_Music_GetInfo:MusicGetInfo_BlService {
     var getMusicInfo:MusicGetInfo_DataService=data_Music_getInfo()
    
    func getMusicInfoByID(ID: String) -> MusicInfoVo {
        var vo:MusicInfoVo
        vo = getMusicInfo.getMusicInfoByID(ID).createVo()
        return vo
    }
    
    func getMusicInfoForBuy() -> [BuyMusicVo] {
        var volist:[BuyMusicVo] = []
        var polist:[BuyMusicPo] = getMusicInfo.getMusicInfoForBuy()
        for po in polist{
            volist.append(po.createVo())
        }
        return volist
    }
}