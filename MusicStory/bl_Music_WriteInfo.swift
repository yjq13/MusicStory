//
//  bl_Music_GetInfo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation

class bl_Music_WriteInfo: MusicWriteInfo_BlService{
    var WriteMusicInfo:MusicWriteInfo_DataService = data_Music_WriteInfo()
    
    func WriteMusicBoughtInfo(vo: BuyMusicVo) {
        WriteMusicInfo.WriteMusicBoughtInfo(vo.createPo())
    }
    
    func WriteMusicInfoByID(vo: MusicInfoVo) {
        WriteMusicInfo.WriteMusicInfoByID(vo.createPo())
    }
}