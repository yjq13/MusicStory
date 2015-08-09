//
//  data_Music_GetData.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation

class data_Music_GetData:MusicGetData_DataService {
    func getMusicData(ID: String) -> MusicDataPo {
        var Mpath = [0.0,1.0]
        //获取文件内的音乐节奏
        var musicdata:MusicDataPo = MusicDataPo(path1: Mpath, path2: Mpath, path3: Mpath, path4: Mpath, path5: Mpath, path6: Mpath)
        return musicdata
    }
}