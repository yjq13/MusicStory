//
//  DeskViewController.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/7/31.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import UIKit

class DeskViewController: UIViewController {
    @IBOutlet weak var speedChooseView: UITableViewCell!
    override func viewDidLoad() {
        super.viewDidLoad()
speedChooseView.hidden=true
        // Do any additional setup after loading the view.
    }
    @IBAction func startGame(sender: AnyObject) {
        speedChooseView.hidden=false
         Constant.LAST_VIEW_IDENTIFY="desk"
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
        //下面的方法是代码跳转界面
        let myStoryBoard = self.storyboard
        let anotherView:UIViewController = myStoryBoard?.instantiateViewControllerWithIdentifier("game") as! UIViewController
        self.presentViewController(anotherView, animated: true, completion: nil)
    }
    @IBAction func speed3Button(sender: AnyObject) {
        Constant.SPEED=1
        //下面的方法是代码跳转界面
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
