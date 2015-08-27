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
        
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("MusicInfoSet.plist")
        var dict = NSDictionary(contentsOfFile: path)
        var musicInfo: AnyObject? = dict?.objectForKey(ID)!
        var score: AnyObject? = musicInfo?.objectForKey("score")!
        var combo: AnyObject? = musicInfo?.objectForKey("combo")!
        var evaluation: AnyObject? = musicInfo?.objectForKey("evaluation")!
        var ID: AnyObject? = musicInfo?.objectForKey("ID")!
        var difficulty: AnyObject? = musicInfo?.objectForKey("difficulty")!
        var lv: AnyObject? = musicInfo?.objectForKey("musicLV")!
        var imagePath: AnyObject? = musicInfo?.objectForKey("imagePath")!
        var name: AnyObject? = musicInfo?.objectForKey("name")!
        
        var scoreGet = score as! Int
        var comboGet = combo as! Int
        var evaluationGet = evaluation as! String
        var IDGet = ID as! String
        var difficultyGet = difficulty as! Int
        var lvGet = lv as! Int
        var nameGet = name as! String
        var imagePathGet = imagePath as! String
        var po :MusicInfoPo = MusicInfoPo(score: scoreGet, combo: comboGet, evaluation: evaluationGet, ID: IDGet, difficulty: difficultyGet, name: nameGet, lv: lvGet, imagePath: imagePathGet)
        
        return po
    }

    func getMusicInfoForBuy() -> [BuyMusicPo] {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("MusicInfoSet.plist")
        var dict = NSDictionary(contentsOfFile: path)
        var counter = dict?.count
        var valueArr = dict?.allValues
        var polist:[BuyMusicPo] = []
        var count = 0
        println(counter)
        for(count;count<counter;count++){
            var id: String = valueArr![count].objectForKey("ID") as! String
            var price: Int = valueArr![count].objectForKey("price") as! Int
            var name: String = valueArr![count].objectForKey("name") as! String
            var iamgePath: String = valueArr![count].objectForKey("imagePath") as! String
            var difficulty: Int = valueArr![count].objectForKey("difficulty") as! Int
            var lv: Int = valueArr![count].objectForKey("musicLV") as! Int
            var ifBought: Bool = valueArr![count].objectForKey("ifBought") as! Bool
            var po:BuyMusicPo = BuyMusicPo(ID: id, price: price, name: name, imagePath: iamgePath, difficulty: difficulty, lv: lv, ifBought: ifBought)
            polist.append(po)
        }
            return polist
        
    }
}