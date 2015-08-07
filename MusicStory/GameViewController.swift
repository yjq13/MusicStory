//
//  GameViewController.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var stopView: UITableViewCell!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        stopView.hidden=true
        //测试
        var list1=[1.0,2.5,3.1,4.5,4.8,6.2]
        var list2=[1.2,1.4,2.1,2.8,8.14,9.1]
        var list3=[1.9,3.8,5.4,7.1,7.9,8.1,8,3]
        var list4=[2.0,2.5,3.1,5.2,7.1]
        var list5=[0.1,0.6,1.2,1.9,5.1,5.9]
        var list6=[0.1,0.6,3.1,3.6,6.8]
        gameStart(list1, list2: list2, list3: list3,list4: list4, list5: list5, list6: list6)
       
        
    }
    //游戏开始
    //六个按键的节奏=6个数组
    var width:CGFloat=50
    var heigth:CGFloat=20
    func gameStart(var list1:[Double],var list2:[Double],var list3:[Double],var list4:[Double],var list5:[Double],var list6:[Double]){

        //设置动画效果
        print(list1.count)
        for t in list1{
            var background1 = UIView(frame:CGRectMake(40, 50, width, heigth))
            background1.backgroundColor = UIColor.darkGrayColor()
            self.view.addSubview(background1)
            background1.alpha=0.0
            UIView.animateWithDuration(1, delay:t,
                options:UIViewAnimationOptions.TransitionNone, animations:
                {
                    ()-> Void in
                    background1.alpha=1.0
                    background1.layer.setAffineTransform(CGAffineTransformMakeTranslation(0, 200))
                },
                completion:{
                    (finished:Bool) -> Void in
                    UIView.animateWithDuration(1.5, animations:{
                        ()-> Void in
                        background1.layer.removeFromSuperlayer()
                    })
            })
        }
        //设置动画效果
        
        for t in list2{
            var background2 = UIView(frame:CGRectMake(120, 50, width, heigth))
            background2.backgroundColor = UIColor.darkGrayColor()
            self.view.addSubview(background2)
            background2.alpha=0.0
            UIView.animateWithDuration(1, delay:t,
                options:UIViewAnimationOptions.TransitionNone, animations:
                {
                    ()-> Void in
                    background2.alpha=1.0
                    background2.layer.setAffineTransform(CGAffineTransformMakeTranslation(0, 200))
                },
                completion:{
                    (finished:Bool) -> Void in
                    UIView.animateWithDuration(1.5, animations:{
                        ()-> Void in
                        background2.layer.removeFromSuperlayer()
                    })
            })
        }
        
        
        for t in list3{
            var background3 = UIView(frame:CGRectMake(200, 50, width, heigth))
            background3.backgroundColor = UIColor.darkGrayColor()
            self.view.addSubview(background3)
            background3.alpha=0.0
            UIView.animateWithDuration(1, delay:t,
                options:UIViewAnimationOptions.TransitionNone, animations:
                {
                    ()-> Void in
                    background3.alpha=1.0
                    background3.layer.setAffineTransform(CGAffineTransformMakeTranslation(0, 200))
                },
                completion:{
                    (finished:Bool) -> Void in
                    UIView.animateWithDuration(1.5, animations:{
                        ()-> Void in
                        background3.layer.removeFromSuperlayer()
                    })
            })
        }
        
        
        
        for t in list4{
            var background4 = UIView(frame:CGRectMake(280, 50, width, heigth))
            background4.backgroundColor = UIColor.darkGrayColor()
            self.view.addSubview(background4)
            background4.alpha=0.0
            UIView.animateWithDuration(1, delay:t,
                options:UIViewAnimationOptions.TransitionNone, animations:
                {
                    ()-> Void in
                    background4.alpha=1.0
                    background4.layer.setAffineTransform(CGAffineTransformMakeTranslation(0, 200))
                },
                completion:{
                    (finished:Bool) -> Void in
                    UIView.animateWithDuration(1.5, animations:{
                        ()-> Void in
                        background4.layer.removeFromSuperlayer()
                    })
            })
        }
        for t in list5{
            var background5 = UIView(frame:CGRectMake(360, 50, width, heigth))
            background5.backgroundColor = UIColor.darkGrayColor()
            self.view.addSubview(background5)
            background5.alpha=0.0
            UIView.animateWithDuration(1, delay:t,
                options:UIViewAnimationOptions.TransitionNone, animations:
                {
                    ()-> Void in
                    background5.alpha=1.0
                    background5.layer.setAffineTransform(CGAffineTransformMakeTranslation(0, 200))
                },
                completion:{
                    (finished:Bool) -> Void in
                    UIView.animateWithDuration(1.5, animations:{
                        ()-> Void in
                        background5.layer.removeFromSuperlayer()
                    })
            })
        }
        for t in list6{
            var background6 = UIView(frame:CGRectMake(440, 50, width, heigth))
            background6.backgroundColor = UIColor.darkGrayColor()
            self.view.addSubview(background6)
            background6.alpha=0.0
            UIView.animateWithDuration(1, delay:t,
                options:UIViewAnimationOptions.TransitionNone, animations:
                {
                    ()-> Void in
                    background6.alpha=1.0
                    background6.layer.setAffineTransform(CGAffineTransformMakeTranslation(0, 200))
                },
                completion:{
                    (finished:Bool) -> Void in
                    UIView.animateWithDuration(1.5, animations:{
                        ()-> Void in
                        background6.layer.removeFromSuperlayer()
                    })
            })
        }
        
    }
    //下面是6键模式的按键
    @IBAction func stopButton(sender: AnyObject) {
        stopView.hidden=false
    }
    
    @IBAction func touchButton1(sender: AnyObject) {
    }
    
    @IBAction func touchButton2(sender: AnyObject) {
    }
    @IBAction func touchButton3(sender: AnyObject) {
    }
    @IBAction func touchButton4(sender: AnyObject) {
    }
    @IBAction func touchButton5(sender: AnyObject) {
    }
    @IBAction func touchButton6(sender: AnyObject) {
    }
    
    @IBAction func resumeButton(sender: AnyObject) {
        stopView.hidden=true
    }
    @IBAction func retryButton(sender: AnyObject) {
    }
    @IBAction func backButton(sender: AnyObject) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
