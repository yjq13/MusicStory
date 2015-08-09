//
//  bl_Game_WriteInfo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation

class bl_Game_WriteInfo:GameWriteInfo_BlService {
    var WriteInfo:GameWriteInfo_DataService = data_Game_WriteInfo()
    func WriteAllInfoNew(vo: AllInfoVo) {
        WriteInfo.WriteAllInfoNew(vo.createPo())
    }
    
    func WritePetInfoNew(vo: PetVo) {
        WriteInfo.WritePetInfoNew(vo.createPo())
    }
}