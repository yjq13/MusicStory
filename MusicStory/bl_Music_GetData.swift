//
//  bl_Music_GetData.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015 yjq131250077. All rights reserved.
//

import Foundation

class bl_Music_GetData:MusicGetData_BlService {
    var getDataService:MusicGetData_DataService = data_Music_GetData()
    
    func getMusicData(ID: String) -> MusicDataVo {
        var musicdata:MusicDataVo
        
        var Po:MusicDataPo = getDataService.getMusicData(ID)
        musicdata = Po.createVo()
        return musicdata
    }
}