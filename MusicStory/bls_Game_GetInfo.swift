//
//  bls_Game_GetInfo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation

protocol GameGetInfo_BlService{
    func getStoryInfoOld(Int)->StoryInfoVo
    
    func getAllInfoOld()->AllInfoVo
    
    func getPetInfoOld()->PetVo
}