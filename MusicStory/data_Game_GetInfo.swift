//
//  data_Game_GetInfo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation

class data_Game_GetInfo:GameGetInfo_DataService {
    func getAllInfoOld() -> AllInfoPo {
        var po:AllInfoPo = AllInfoPo(storyStep: 0, lv: 0, money: 0)
        return po
    }
    
    func getPetInfoOld() -> PetPo {
        var po:PetPo = PetPo(state: "", experince: 0, lv: 0)
        return po
    }
    
    func getStoryInfoOld() -> StoryInfoPo {
        var po:StoryInfoPo = StoryInfoPo(step: 0, target: "", MusicID: "", LvNeed: 0)
        return po
    }
}