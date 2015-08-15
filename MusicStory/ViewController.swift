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
//        var getInfo = data_Music_WriteInfo()
//        var po: BuyMusicPo = BuyMusicPo(ID: "M-0000", price: 0, name: "test", imagePath: "", difficulty: 5, lv: 0,      ifBought: true)
//        getInfo.WriteMusicBoughtInfo(po)
        var get = data_Music_getInfo()
        var npo = get.getMusicInfoByID("M-0000")
        println(npo.difficulty)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

