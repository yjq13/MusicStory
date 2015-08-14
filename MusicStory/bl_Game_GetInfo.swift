//
//  bl_Game_WriteInfo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015 yjq131250077. All rights reserved.
//

import Foundation

class bl_Game_GetInfo:GameGetInfo_BlService {
    var GameGetInfo:GameGetInfo_DataService = data_Game_GetInfo()
    
    func getAllInfoOld() -> AllInfoVo {
        var vo = GameGetInfo.getAllInfoOld().createVo()
        return vo
    }
    
    func getStoryInfo(StoryStep:Int) -> StoryInfoVo {
        var vo = GameGetInfo.getStoryInfo(StoryStep).createVo()
        return vo
    }
    
    func getExamInfo(lv:Int)->MusicInfoVo{
        var vo = GameGetInfo.getExamInfo(lv).createVo()
        return vo
    }
    
    func getPetInfoOld() -> PetVo {
        var vo = GameGetInfo.getPetInfoOld().createVo()
        return vo
    }
}