//
//  data_Music_GetData.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation

class data_Music_GetData:MusicGetData_DataService {
    func getMusicData(ID: String) -> MusicDataPo {
        var musicdata:MusicDataPo!
        
        var dict = NSDictionary(contentsOfFile: NSBundle.mainBundle().pathForResource("test", ofType: "plist")!)
        var thing1: AnyObject? = dict?.objectForKey("path1")!
        var thing2: AnyObject? = dict?.objectForKey("path2")!
        var thing3: AnyObject? = dict?.objectForKey("path3")!
        var thing4: AnyObject? = dict?.objectForKey("path4")!
        var thing5: AnyObject? = dict?.objectForKey("path5")!
        var thing6: AnyObject? = dict?.objectForKey("path6")!
        var p1:[Double] = thing1 as! [Double]
        var p2:[Double] = thing2 as! [Double]
        var p3:[Double] = thing3 as! [Double]
        var p4:[Double] = thing4 as! [Double]
        var p5:[Double] = thing5 as! [Double]
        var p6:[Double] = thing6 as! [Double]
        //获取文件内的音乐节奏
        println(p2)
        musicdata = MusicDataPo(path1: p1, path2: p2, path3: p3, path4: p4, path5: p5, path6: p6)
        return musicdata
    }
}