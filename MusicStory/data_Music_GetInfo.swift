//
//  data_Music_GetInfo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import Foundation

class data_Music_getInfo:MusicGetInfo_DataService {
    func getMusicInfoByID(ID: String) -> MusicInfoPo {
        var dict = NSDictionary(contentsOfFile: NSBundle.mainBundle().pathForResource("MusicInfoSet", ofType: "plist")!)
        var musicInfo: AnyObject? = dict?.objectForKey(ID)!
        var score: AnyObject? = musicInfo?.objectForKey("score")!
        var combo: AnyObject? = musicInfo?.objectForKey("combo")!
        var evaluation: AnyObject? = musicInfo?.objectForKey("evaluation")!
        var ID: AnyObject? = musicInfo?.objectForKey("ID")!
        var difficulty: AnyObject? = musicInfo?.objectForKey("difficulty")!
        var lv: AnyObject? = musicInfo?.objectForKey("lv")!
        var imagePath: AnyObject? = musicInfo?.objectForKey("imagePath")!
        var name: AnyObject? = dict?.objectForKey("name")!
        
        var scoreGet = score as! Int
        var comboGet = combo as! Int
        var evaluationGet = evaluation as! String
        var IDGet = ID as! String
        var difficultyGet = difficulty as! Int
        var lvGet = lv as! Int
        var nameGet = name as! String
        var imagePathGet = imagePath as! String
        var po :MusicInfoPo = MusicInfoPo(score: 0, combo: 0, evaluation: "", ID: "", difficulty: 0, name: "", lv: 0, imagePath: "")
        
        return po
    }
    
    func getMusicInfoForBuy() -> [BuyMusicPo] {
       var dict = NSDictionary(contentsOfFile: NSBundle.mainBundle().pathForResource("MusicInfoSet", ofType: "plist")!)
        
        var polist:[BuyMusicPo] = []
        //polist.append(Bpo)
        return polist
    }
}