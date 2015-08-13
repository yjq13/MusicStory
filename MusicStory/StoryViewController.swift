//
//  StoryViewController.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {
    var musicName:String=""
    var musicSpeed:Int!
    @IBOutlet weak var speedChooseView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        speedChooseView.hidden=true
    }
    @IBAction func startGame(sender: AnyObject) {
        speedChooseView.hidden=false
        
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func speed1Button(sender: AnyObject) {
        self.musicSpeed=1
    }
    
    @IBAction func speed2Button(sender: AnyObject) {
        self.musicSpeed=2
    }
    @IBAction func speed3Button(sender: AnyObject) {
        self.musicSpeed=3
    }
    @IBAction func closeSpeedViewButton(sender: AnyObject) {
        speedChooseView.hidden=true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
