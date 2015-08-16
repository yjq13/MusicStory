//
//  GameViewController.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import UIKit
import AVFoundation

class GameViewController: UIViewController {
    var musicName:String=Constant.MUSIC_NAME//音乐名
    var musicSpeed:Double=Constant.SPEED//音乐速度
    var musicData:MusicDataVo!
    var isPause:Bool!//判断暂停
    var score:Int!//得分
    var combo:[Int] = []//连击数
    var comboLiter:Int=0//combo数组的计数器
    var perfectNum:Int=0
    var greatNum:Int=0
    var badNum:Int=0
    var missNum:Int=0
    var rythmHasBeenJudged=false//用于判定节奏
    var musicPlayer=AVAudioPlayer()
    var scoreLevel:String=""
    var musicOffset:Double=2//节奏开始偏差
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var stopView: UITableViewCell!
    @IBOutlet weak var scoreView: UITableViewCell!
    override func viewDidLoad() {
        super.viewDidLoad()
        musicName="M-0001"
        var getMusicData:MusicGetData_BlService=bl_Music_GetData()
        musicData=getMusicData.getMusicData(musicName)
        //隐藏
        stopView.hidden=true
        scoreView.hidden=true
        //初始化
        combo=[0]
        comboLiter=0
        score=0
        isPause=false
        perfectNum=0
        greatNum=0
        badNum=0
        missNum=0
        rythmHasBeenJudged=false
        stopButton.hidden=false
        scoreLevel=""
        musicOffset=2
        
        musicStartThread()
        
        //游戏开始
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
    var width:CGFloat=70
    var heigth:CGFloat=30
    //动画开始时间
    var beginTime:CFTimeInterval!
    func gameAnimation() {
        var list1=musicData.musicPath1
        var list2=musicData.musicPath2
        var list3=musicData.musicPath3
        var list4=musicData.musicPath4
        var list5=musicData.musicPath5
        var list6=musicData.musicPath6
        
        var gameTime=0.0
        var listOfLast=[list1[list1.count-1],list2[list2.count-1],list3[list3.count-1],list4[list4.count-1],list5[list5.count-1],list6[list6.count-1]]
        sort(&listOfLast)
        gameTime=listOfLast[5]
        
        beginTime=CFTimeInterval(self.view.layer.convertTime(CACurrentMediaTime(), fromLayer: nil))
        //设置动画效果
        UIView.animateWithDuration(musicSpeed, delay:gameTime+3,
            options:UIViewAnimationOptions.CurveLinear, animations:
            {
                ()-> Void in
                for t in list1{
                    var background1 = UIView(frame:CGRectMake(25, 50, self.width, self.heigth))
                    background1.backgroundColor = UIColor.darkGrayColor()
                    self.view.addSubview(background1)
                    background1.alpha=0.0
                    UIView.animateWithDuration(1, delay:(t-self.musicSpeed + self.musicOffset),
                        options:UIViewAnimationOptions.TransitionNone, animations:
                        {
                            ()-> Void in
                            background1.alpha=1.0
                            background1.layer.setAffineTransform(CGAffineTransformMakeTranslation(0, 200))
                            self.view.bringSubviewToFront(self.button1)
                        },
                        completion:{
                            (finished:Bool) -> Void in
                            UIView.animateWithDuration(1, animations:{
                                ()-> Void in
                                if !self.rythmHasBeenJudged {
                                    print("miss")
                                    if(self.combo[self.comboLiter] != 0){
                                        self.combo.append(0)
                                        self.comboLiter++
                                    }
                                }
                                background1.hidden=true
                                self.rythmHasBeenJudged=false
                            })
                    })
                    
                }
                
                for t in list2{
                    var background2 = UIView(frame:CGRectMake(115, 50, self.width, self.heigth))
                    background2.backgroundColor = UIColor.darkGrayColor()
                    self.view.addSubview(background2)
                    background2.alpha=0.0
                    UIView.animateWithDuration(1, delay:(t-self.musicSpeed + self.musicOffset),
                        options:UIViewAnimationOptions.TransitionNone, animations:
                        {
                            ()-> Void in
                            background2.alpha=1.0
                            background2.layer.setAffineTransform(CGAffineTransformMakeTranslation(0, 200))
                             self.view.bringSubviewToFront(self.button2)
                        },
                        completion:{
                            (finished:Bool) -> Void in
                            UIView.animateWithDuration(1, animations:{
                                ()-> Void in
                                if !self.rythmHasBeenJudged {
                                    print("miss")
                                    if(self.combo[self.comboLiter] != 0){
                                        self.combo.append(0)
                                        self.comboLiter++
                                    }
                                }
                                background2.hidden=true
                                self.rythmHasBeenJudged=false
                            })
                    })
                }
                
                
                for t in list3{
                    var background3 = UIView(frame:CGRectMake(205, 50, self.width, self.heigth))
                    background3.backgroundColor = UIColor.darkGrayColor()
                    self.view.addSubview(background3)
                    background3.alpha=0.0
                    UIView.animateWithDuration(1, delay:(t-self.musicSpeed + self.musicOffset),
                        options:UIViewAnimationOptions.TransitionNone, animations:
                        {
                            ()-> Void in
                            background3.alpha=1.0
                            background3.layer.setAffineTransform(CGAffineTransformMakeTranslation(0, 200))
                             self.view.bringSubviewToFront(self.button3)
                        },
                        completion:{
                            (finished:Bool) -> Void in
                            UIView.animateWithDuration(1, animations:{
                                ()-> Void in
                                if !self.rythmHasBeenJudged {
                                    print("miss")
                                    if(self.combo[self.comboLiter] != 0){
                                        self.combo.append(0)
                                        self.comboLiter++
                                    }
                                }
                                background3.hidden=true
                                self.rythmHasBeenJudged=false
                            })
                    })
                }
                
                
                
                for t in list4{
                    var background4 = UIView(frame:CGRectMake(295, 50, self.width, self.heigth))
                    background4.backgroundColor = UIColor.darkGrayColor()
                    self.view.addSubview(background4)
                    background4.alpha=0.0
                    UIView.animateWithDuration(1, delay:(t-self.musicSpeed + self.musicOffset),
                        options:UIViewAnimationOptions.TransitionNone, animations:
                        {
                            ()-> Void in
                            background4.alpha=1.0
                            background4.layer.setAffineTransform(CGAffineTransformMakeTranslation(0, 200))
                             self.view.bringSubviewToFront(self.button4)
                        },
                        completion:{
                            (finished:Bool) -> Void in
                            UIView.animateWithDuration(1, animations:{
                                ()-> Void in
                                if !self.rythmHasBeenJudged {
                                    print("miss")
                                    if(self.combo[self.comboLiter] != 0){
                                        self.combo.append(0)
                                        self.comboLiter++
                                    }
                                }
                                background4.hidden=true
                                self.rythmHasBeenJudged=false
                            })
                    })
                }
                for t in list5{
                    var background5 = UIView(frame:CGRectMake(385, 50, self.width, self.heigth))
                    background5.backgroundColor = UIColor.darkGrayColor()
                    self.view.addSubview(background5)
                    background5.alpha=0.0
                    UIView.animateWithDuration(1, delay:(t-self.musicSpeed + self.musicOffset),
                        options:UIViewAnimationOptions.TransitionNone, animations:
                        {
                            ()-> Void in
                            background5.alpha=1.0
                            background5.layer.setAffineTransform(CGAffineTransformMakeTranslation(0, 200))
                             self.view.bringSubviewToFront(self.button5)
                        },
                        completion:{
                            (finished:Bool) -> Void in
                            UIView.animateWithDuration(1, animations:{
                                ()-> Void in
                                if !self.rythmHasBeenJudged {
                                    print("miss")
                                    if(self.combo[self.comboLiter] != 0){
                                        self.combo.append(0)
                                        self.comboLiter++
                                    }
                                }
                                background5.hidden=true
                                self.rythmHasBeenJudged=false
                            })
                    })
                }
                for t in list6{
                    var background6 = UIView(frame:CGRectMake(475, 50, self.width, self.heigth))
                    background6.backgroundColor = UIColor.darkGrayColor()
                    self.view.addSubview(background6)
                    background6.alpha=0.0
                    UIView.animateWithDuration(1, delay:(t-self.musicSpeed + self.musicOffset),
                        options:UIViewAnimationOptions.TransitionNone, animations:
                        {
                            ()-> Void in
                            background6.alpha=1.0
                            background6.layer.setAffineTransform(CGAffineTransformMakeTranslation(0, 200))
                             self.view.bringSubviewToFront(self.button6)
                        },
                        completion:{
                            (finished:Bool) -> Void in
                            UIView.animateWithDuration(1, animations:{
                                ()-> Void in
                                if !self.rythmHasBeenJudged {
                                    print("miss")
                                    if(self.combo[self.comboLiter] != 0){
                                        self.combo.append(0)
                                        self.comboLiter++
                                    }else{
                                        
                                    }
                                }
                                background6.hidden=true
                                self.rythmHasBeenJudged=false
                            })
                    })
                }
                
            },
            completion:{//游戏结束，展示得分并返回
                (finished:Bool) -> Void in
                self.missNum=list1.count+list2.count+list3.count+list4.count+list5.count+list6.count - self.perfectNum - self.greatNum - self.badNum
                var gameInfo=GameInfoVo(perfectNum: self.perfectNum, greatNum: self.greatNum, badNum: self.badNum, missNum: self.missNum, combo: self.combo)
                var musicWriteData:MusicCountInfo_BlService=bl_Music_CountInfo()
                self.score=musicWriteData.countScoreByGame(gameInfo)
                self.scoreLevel=musicWriteData.evaluationByGame(gameInfo)
                self.scoreLabel.text=String("\(self.scoreLevel):  \(self.score)")
                self.scoreView.hidden=false
        })
        
    }
    //下面是6键模式的按键
    @IBAction func stopButton(sender: AnyObject) {
        pauseLayer(self.view.layer)
        
        stopView.hidden=false
        stopButton.hidden=true
    }
    
    
    
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBAction func touchButton1(sender: AnyObject) {
        buttonPushed(musicData.musicPath1)
    }
    
    @IBAction func touchButton2(sender: AnyObject) {
        buttonPushed(musicData.musicPath2)
        
    }
    @IBAction func touchButton3(sender: AnyObject) {
        buttonPushed(musicData.musicPath3)
    }
    
    @IBAction func touchButton6(sender: AnyObject) {
        buttonPushed(musicData.musicPath6)
    }
    
    @IBAction func touchButton5(sender: AnyObject) {
        buttonPushed(musicData.musicPath5)
    }
    @IBAction func touchButton4(sender: AnyObject) {
        buttonPushed(musicData.musicPath4)
    }
    @IBAction func resumeButton(sender: AnyObject) {
        self.stopView.hidden=true
        self.resumeAnimation()
        self.resumeLayer(self.view.layer)
        stopButton.hidden=false
        
    }
    @IBAction func retryButton(sender: AnyObject) {
        
        retryLayer(self.view.layer)
        self.viewDidLoad()
        stopView.hidden=true
        stopButton.hidden=false
        
    }
    @IBAction func backButton(sender: AnyObject) {
        let myStoryBoard = self.storyboard
        let anotherView:UIViewController = myStoryBoard?.instantiateViewControllerWithIdentifier(Constant.LAST_VIEW_IDENTIFY) as! UIViewController
        self.presentViewController(anotherView, animated: true, completion: nil)
    }
    @IBAction func gameOverButton(sender: AnyObject) {
        backButton(self)
    }
    @IBAction func gameRetryButton(sender: AnyObject) {
        retryButton(self)
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
        musicPlayer.pause()
        
    }
    func resumeLayer(var layer:CALayer){
        var pauseTime=CFTimeInterval(layer.timeOffset)
        layer.speed=1.0
        layer.timeOffset=0.0
        layer.beginTime=0.0
        var timeSincePause=CFTimeInterval(layer.convertTime(CACurrentMediaTime(), fromLayer: nil)) - pauseTime+5
        layer.beginTime=timeSincePause
        musicResumeThread()
        
        
    }
    //下面用来重试游戏
    func retryLayer(var layer:CALayer){
        layer.speed=1.0
        layer.timeOffset=0.0
        layer.beginTime=0.0
        var timeSinceBegin=CFTimeInterval(layer.convertTime(CACurrentMediaTime(), fromLayer: nil)) - beginTime
        layer.beginTime=timeSinceBegin
        musicPlayer.stop()
        musicPlayer.prepareToPlay()
        musicPlayer.play()
    }
    //下面是恢复时的倒计时动画
    func resumeAnimation(){
        var imageView=UIImageView(frame: CGRectMake(100, 100, 200, 200))
        imageView.center=self.view.center
        var images=[AnyObject]()
        for var i=1;i<7;i++ {
            var im=UIImage(named: "\(i).jpg")
            images.append(im!)
        }
        imageView.animationImages=images
        imageView.animationDuration=5
        imageView.animationRepeatCount=1
        imageView.startAnimating()
        self.view.addSubview(imageView)
    }
    //下面是显示perfect等效果的方法
    
    func showEffentAnimation(){
        
    }
    //下面方法是按钮按下之后判断的方法
    func buttonPushed(musicTime:[Double]){
        var buttonPushTime=CFTimeInterval(self.view.layer.convertTime(CACurrentMediaTime(), fromLayer: nil))-beginTime
        if !rythmHasBeenJudged {
            for i in musicTime {
                var offset=i-buttonPushTime
                if (offset>=0&&offset<0.1) {
                    print("perfect")
                    rythmHasBeenJudged=true
                    perfectNum++
                    combo[comboLiter]++
                }else if(offset>=0.1&&offset<0.2){
                    print("great")
                    rythmHasBeenJudged=true
                    greatNum++
                    combo[comboLiter]++
                }else if(offset>=0.2&&offset<0.3){
                    print("bad")
                    rythmHasBeenJudged=true
                    badNum++
                    if(self.combo[self.comboLiter] != 0){
                        combo.append(0)
                        comboLiter++
                    }
                }
                
            }
        }
        
        
    }
    func musicStartThread(){
        var myThread = NSThread(target:self,selector:"playMusic",object:nil)
        myThread.start()
    }
    
    func musicResumeThread(){
        var myThread = NSThread(target:self,selector:"resumeMusic",object:nil)
        myThread.start()
    }
    //下面方法用于获取音乐
    func playMusic(){
        let musicPath=NSBundle.mainBundle().pathForResource("眼泪", ofType: "mp3")
        let url=NSURL(fileURLWithPath: musicPath!)
        musicPlayer=AVAudioPlayer(contentsOfURL: url, error: nil)
        musicPlayer.prepareToPlay()
        sleep(2)
        musicPlayer.play()
    }
    
    //下面用户回复音乐播放
    func resumeMusic(){
        sleep(5)//延迟5秒回复
        musicPlayer.play()
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
