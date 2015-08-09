//
//  MusicDataPo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/9.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation
class MusicDataPo {
    var musicPath1:[Double]
    var musicPath2:[Double]
    var musicPath3:[Double]
    var musicPath4:[Double]
    var musicPath5:[Double]
    var musicPath6:[Double]
    
    init(path1:[Double],path2:[Double],path3:[Double],path4:[Double],path5:[Double],path6:[Double]){
        self.musicPath1=path1
        self.musicPath2=path2
        self.musicPath3=path3
        self.musicPath4=path4
        self.musicPath5=path5
        self.musicPath6=path6
    }
    func createVo()->MusicDataVo{
        var vo:MusicDataVo
        vo = MusicDataVo(path1: musicPath1,path2: musicPath2,path3: musicPath3,path4: musicPath4,path5: musicPath5,path6: musicPath6)
        return vo
    }
}