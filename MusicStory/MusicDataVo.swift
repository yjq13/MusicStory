//
//  MusicDataVo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/9.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//音乐节奏

import Foundation
class MusicDataVo {
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
}