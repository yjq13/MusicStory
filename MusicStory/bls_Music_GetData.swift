//
//  bls_Music_GetData.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation

protocol MusicGetData_BlService{
    func getMusicData(String)-> MusicDataVo    //获取节奏信息
}