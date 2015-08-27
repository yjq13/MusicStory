//
//  data_Game_GetInfo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015 yjq131250077. All rights reserved.
//

import Foundation

class data_Game_GetInfo:GameGetInfo_DataService {
    func getAllInfoOld() -> AllInfoPo {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("AllInfo.plist")
        var dict = NSDictionary(contentsOfFile:path)
        var storystep: AnyObject? = dict?.objectForKey("storyStep")!
        var lv: AnyObject? = dict?.objectForKey("lv")!
        var money: AnyObject? = dict?.objectForKey("money")!
        var sound: AnyObject? = dict?.objectForKey("sound")!
        
        var lvGet = lv as! Int
        var storyStepGet = storystep as! Int
        var moneyGet = money as! Int
        var soundGet = sound as! Bool
        var po:AllInfoPo = AllInfoPo(storyStep: storyStepGet, lv: lvGet, money: moneyGet,sound:soundGet)
        return po
    }
    
    func getPetInfoOld() -> PetPo {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("AllInfo.plist")
        var dict = NSDictionary(contentsOfFile: path)
        var state: AnyObject? = dict?.objectForKey("state")!
        var experince: AnyObject? = dict?.objectForKey("experince")!
        var lv: AnyObject? = dict?.objectForKey("petLV")!
        
        var stateGet = state as! Int
        var experinceGet = experince as! Int
        var lvGet = lv as! Int
        var po:PetPo = PetPo(state: stateGet, experince: experinceGet, lv: lvGet)
        return po
    }
    //no
    func getExamInfo(Int)->MusicInfoPo{
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("examination.plist")
        var dict = NSDictionary(contentsOfFile: path)
        var po:MusicInfoPo = MusicInfoPo(score: 0, combo: 0, evaluation: "", ID: "", difficulty: 0, name: "", lv: 0, imagePath: "")
        return po

    }
    //no
    func getStoryInfo(StoryStep:Int) -> StoryInfoPo {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("StoryInfo.plist")
        var dict = NSDictionary(contentsOfFile: path)
        var po:StoryInfoPo = StoryInfoPo(step: 0, target: "", MusicID: "", LvNeed: 0,description:"")
        return po
    }
}