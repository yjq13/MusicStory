//
//  data_Music_WriteInfo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation

class  data_Music_WriteInfo:MusicWriteInfo_DataService{
    func WriteMusicBoughtInfo(Po: BuyMusicPo) {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("MusicInfoSet.plist")
        var dict = NSMutableDictionary(contentsOfFile: path)
        var musicdata: NSMutableDictionary = dict?.valueForKey(Po.ID) as! NSMutableDictionary
        musicdata.setObject(Po.ifBought, forKey: "ifBought")
        dict?.setObject(musicdata, forKey: Po.ID)
        
        dict?.writeToFile(NSBundle.mainBundle().pathForResource("MusicInfoSet", ofType: "plist")!, atomically: false)
        dict?.writeToFile(path, atomically: false)

        let resultDictionary = NSMutableDictionary(contentsOfFile: NSBundle.mainBundle().pathForResource("MusicInfoSet", ofType: "plist")!)
        println(resultDictionary)
    }
    
    func WriteMusicInfoByID(Po: MusicInfoPo) {
        
    }
}