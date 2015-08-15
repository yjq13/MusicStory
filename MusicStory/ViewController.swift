//
//  ViewController.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths.objectAtIndex(0) as! NSString
        let path = documentsDirectory.stringByAppendingPathComponent("AllInfo.plist")
        var dict = NSDictionary(contentsOfFile: path)
        if(dict?.allKeys[0]==nil){
            var Launch = launch()
        
            Launch.loadData()
        }
//        var getInfo = data_Music_WriteInfo()
//       var po: MusicInfoPo =  MusicInfoPo(score: 10, combo: 0, evaluation: "C", ID: "M-0000", difficulty: 0, name: "test", lv: 0, imagePath: "")
//        getInfo.WriteMusicInfoByID(po)
//        var get = data_Music_getInfo()
//        var npo = get.getMusicInfoForBuy()
//        println(npo[0].musicLV)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

