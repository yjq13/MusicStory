//
//  data_Game_WriteInfo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation

class data_Game_WriteInfo:GameWriteInfo_DataService {
    func WriteAllInfoNew(po: AllInfoPo) {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("AllInfo.plist")
        var dict = NSMutableDictionary(contentsOfFile: path)
        dict?.setObject(po.lv, forKey: "lv")
        dict?.setObject(po.money, forKey: "money")
        dict?.setObject(po.sound, forKey: "sound")
        dict?.setObject(po.storyStep, forKey: "storyStep")

        dict?.writeToFile(NSBundle.mainBundle().pathForResource("AllInfo", ofType: "plist")!, atomically: false)
        dict?.writeToFile(path, atomically: false)
        
        let resultDictionary = NSMutableDictionary(contentsOfFile: NSBundle.mainBundle().pathForResource("AllInfo", ofType: "plist")!)
        //println(resultDictionary)
    }
    
    func WritePetInfoNew(po: PetPo) {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("AllInfo.plist")
        var dict = NSMutableDictionary(contentsOfFile: path)
        dict?.setObject(po.experince, forKey: "experince")
        dict?.setObject(po.lv, forKey: "petLV")
        dict?.setObject(po.state, forKey: "state")
        
        dict?.writeToFile(NSBundle.mainBundle().pathForResource("AllInfo", ofType: "plist")!, atomically: false)
        dict?.writeToFile(path, atomically: false)
        
        let resultDictionary = NSMutableDictionary(contentsOfFile: NSBundle.mainBundle().pathForResource("AllInfo", ofType: "plist")!)
        //println(resultDictionary)
    }
}