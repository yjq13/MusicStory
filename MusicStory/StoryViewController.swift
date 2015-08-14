//
//  StoryViewController.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {
    @IBOutlet weak var speedChooseView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        speedChooseView.hidden=true
    }
    @IBAction func startGame(sender: AnyObject) {
        speedChooseView.hidden=false
        Constant.LAST_VIEW_IDENTIFY="story"
        
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func speed1Button(sender: AnyObject) {
        Constant.SPEED=2
        //下面的方法是代码跳转界面
        let myStoryBoard = self.storyboard
        let anotherView:UIViewController = myStoryBoard?.instantiateViewControllerWithIdentifier("game") as! UIViewController
        self.presentViewController(anotherView, animated: true, completion: nil)
    }
    
    @IBAction func speed2Button(sender: AnyObject) {
        Constant.SPEED=1.5
        let myStoryBoard = self.storyboard
        let anotherView:UIViewController = myStoryBoard?.instantiateViewControllerWithIdentifier("game") as! UIViewController
        self.presentViewController(anotherView, animated: true, completion: nil)

    }
    @IBAction func speed3Button(sender: AnyObject) {
        Constant.SPEED=1
        let myStoryBoard = self.storyboard
        let anotherView:UIViewController = myStoryBoard?.instantiateViewControllerWithIdentifier("game") as! UIViewController
        self.presentViewController(anotherView, animated: true, completion: nil)

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
