//
//  GameViewController.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    var isPause:Bool!//判断暂停
    @IBOutlet weak var stopView: UITableViewCell!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //隐藏暂停选项
        stopView.hidden=true
        isPause=false
        UIView.animateWithDuration(1, delay:0,
            options:UIViewAnimationOptions.TransitionNone, animations:
            {
                ()-> Void in
                println("gameStart")
            },
            completion:{
                (finished:Bool) -> Void in
                self.gameAnimation()

        })
                
    }
    
    //游戏开始
    //六个按键的节奏=6个数组
//音符高宽
    var width:CGFloat=50
    var heigth:CGFloat=20
//动画开始时间
var beginTime:CFTimeInterval!
    func gameAnimation() {
        var list1=[1.0,2.0,3.0,4.0,5.0,6.0]
        var list2=[1.0,2.0,3.0,4.0,5.0]
        var list3=[1.0,2.0,3.0,4.0]
        var list4=[1.0,2.0,3.0]
        var list5=[1.0,2.0]
        var list6=[1.0]
        beginTime=CFTimeInterval(self.view.layer.convertTime(CACurrentMediaTime(), fromLayer: nil))
        //设置动画效果
        for t in list1{
            var background1 = UIView(frame:CGRectMake(100, 50, width, heigth))
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
                    UIView.animateWithDuration(1, animations:{
                        ()-> Void in
                        // background1.layer.removeFromSuperlayer()
                        background1.hidden=true
                    })
            })
            
        }
        //设置动画效果
        
        for t in list2{
            var background2 = UIView(frame:CGRectMake(180, 50, width, heigth))
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
                    UIView.animateWithDuration(1, animations:{
                        ()-> Void in
                        //background2.layer.removeFromSuperlayer()
                        background2.hidden=true
                    })
            })
        }
        
        
        for t in list3{
            var background3 = UIView(frame:CGRectMake(260, 50, width, heigth))
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
                    UIView.animateWithDuration(1, animations:{
                        ()-> Void in
                        //background3.layer.removeFromSuperlayer()
                        background3.hidden=true
                    })
            })
        }
        
        
        
        for t in list4{
            var background4 = UIView(frame:CGRectMake(340, 50, width, heigth))
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
                    UIView.animateWithDuration(1, animations:{
                        ()-> Void in
                        //background4.layer.removeFromSuperlayer()
                        background4.hidden=true
                    })
            })
        }
        for t in list5{
            var background5 = UIView(frame:CGRectMake(420, 50, width, heigth))
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
                    UIView.animateWithDuration(1, animations:{
                        ()-> Void in
                        // background5.layer.removeFromSuperlayer()
                        background5.hidden=true
                    })
            })
        }
        for t in list6{
            var background6 = UIView(frame:CGRectMake(500, 50, width, heigth))
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
                    UIView.animateWithDuration(1, animations:{
                        ()-> Void in
                        // background6.layer.removeFromSuperlayer()
                        background6.hidden=true
                    })
            })
        }
    }
    //下面是6键模式的按键
    @IBAction func stopButton(sender: AnyObject) {
        pauseLayer(self.view.layer)
        
        stopView.hidden=false
    }
    
    @IBAction func touchButton1(sender: AnyObject) {
    }
    
    @IBAction func touchButton2(sender: AnyObject) {
    }
    @IBAction func touchButton3(sender: AnyObject) {
    }
    
    @IBAction func touchButton6(sender: AnyObject) {
    }
    
    @IBAction func touchButton5(sender: AnyObject) {
    }
    @IBAction func touchButton4(sender: AnyObject) {
    }
    @IBAction func resumeButton(sender: AnyObject) {
        
        resumeLayer(self.view.layer)
        stopView.hidden=true
    }
    @IBAction func retryButton(sender: AnyObject) {
        
        retryLayer(self.view.layer)
        self.viewDidLoad()
        stopView.hidden=true
        
    }
    @IBAction func backButton(sender: AnyObject) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //下面两个方法用来暂停和恢复
    func pauseLayer(var layer:CALayer){
        var pauseTime=CFTimeInterval(layer.convertTime(CACurrentMediaTime(), fromLayer: nil))
        layer.speed=0
        layer.timeOffset=pauseTime
    }
    func resumeLayer(var layer:CALayer){
        var pauseTime=CFTimeInterval(layer.timeOffset)
        layer.speed=1.0
        layer.timeOffset=0.0
        layer.beginTime=0.0
        var timeSincePause=CFTimeInterval(layer.convertTime(CACurrentMediaTime(), fromLayer: nil)) - pauseTime
        layer.beginTime=timeSincePause
    }
    //下面用来重试游戏
func retryLayer(var layer:CALayer){
        layer.speed=1.0
        layer.timeOffset=0.0
        layer.beginTime=0.0
        var timeSinceBegin=CFTimeInterval(layer.convertTime(CACurrentMediaTime(), fromLayer: nil)) - beginTime
        layer.beginTime=timeSinceBegin
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
