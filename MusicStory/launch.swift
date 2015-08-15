//
//  lanuch.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/15.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation

class launch{
    func loadData(){
        var MusicInfoSet = NSDictionary(contentsOfFile: NSBundle.mainBundle().pathForResource("MusicInfoSet", ofType: "plist")!)
        var AllInfo = NSDictionary(contentsOfFile: NSBundle.mainBundle().pathForResource("MusicInfoSet", ofType: "plist")!)
        var examination = NSDictionary(contentsOfFile: NSBundle.mainBundle().pathForResource("MusicInfoSet", ofType: "plist")!)
        var StoryInfo = NSDictionary(contentsOfFile: NSBundle.mainBundle().pathForResource("MusicInfoSet", ofType: "plist")!)
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path1 = documentsDirectory.stringByAppendingPathComponent("MusicInfoSet.plist")
        let path2 = documentsDirectory.stringByAppendingPathComponent("AllInfo.plist")
        let path3 = documentsDirectory.stringByAppendingPathComponent("StoryInfo.plist")
        let path4 = documentsDirectory.stringByAppendingPathComponent("examination.plist")
        
        MusicInfoSet?.writeToFile(path1, atomically: false)
        AllInfo?.writeToFile(path2, atomically: false)
        examination?.writeToFile(path4, atomically: false)
        StoryInfo?.writeToFile(path3, atomically: false)
        println("loadDataSuccessed")
    }
    
}