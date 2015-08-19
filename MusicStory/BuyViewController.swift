//
//  BuyViewController.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController,LTInfiniteScrollViewDataSource,LTInfiniteScrollViewDelegate{
    var items=["小苹果","眼泪","傻吊应佳琪","帅哥马长松","啊","妈的还有谁","a","b","c"]
    var testScrollView:LTInfiniteScrollView!
    var viewSize:CGFloat!
    let numberOfVisibleView:CGFloat=5
    var index=0
    var count=0//计数，赋值次数
    var numberOfShowView=10
    var music=[musicBuyer]()
    
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var musicPriceLabel: UILabel!
    
    var price=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        count=0
        index=0
        viewSize = CGRectGetWidth(self.view.bounds) / numberOfVisibleView
        testScrollView=LTInfiniteScrollView(frame: CGRectMake(0, 70, ceil(CGRectGetWidth(self.view.bounds)/10)*10, 200))
        testScrollView.dataSource=self
        testScrollView.delegate=self
        self.view.addSubview(testScrollView)
        testScrollView.reloadData()
        testScrollView.maxScrollDistance=3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buyMusic(sender: AnyObject) {
        print("buy")
        for m in music {
            if m.musicID == index{
                if m.hasBeenBought == false{
                    println("buyle")
                    m.hasBeenBought=true
                    buyButton.setTitle("hasBeenBought", forState: UIControlState.Normal)
                }
            }
        }

    }
    
    //下面是协议定义的方法
    func numberOfViews() -> Int {
        return 999
    }
    func numberOfShowViews() -> Int {
        return numberOfShowView
    }
    
    func numberOfVisibleViews() -> Int {
        return 5
    }
    
    func viewAtIndex(index: Int, reusingView view: UIView!) -> UIView! {
        if((view) != nil){
            return view
        }
        var elseView:UIImageView=UIImageView(frame: CGRectMake(0, 0, 50, 50))
        elseView.backgroundColor=UIColor.blackColor()
        var picUrl=index + numberOfShowView/2-1 + numberOfShowView%2
        var image=UIImage(named: "0\(picUrl).jpg")
        elseView.image=image
        
        var m=musicBuyer()
        m.musicID=picUrl
        m.hasBeenBought=false
        music.append(m)
        
        
        return elseView
        
    }
    func updateView(view: UIView!, withProgress progress: CGFloat, scrollDirection direction: ScrollDirection) {
        var transform = CATransform3DIdentity
        // scale
        var size = self.viewSize
        var center = view.center
        view.center = center
        size = size * (1.4 - 0.3 * (fabs(progress)))
        view.frame = CGRectMake(0, 0, size, size)
        // view.layer.cornerRadius = size / 2
        view.center = center
        
        // translate
        var translate = self.viewSize / 3 * progress
        if (progress > 1) {
            translate = self.viewSize / 3
        } else if (progress < -1) {
            translate = -self.viewSize / 3
        }
        transform = CATransform3DTranslate(transform, translate, 0, 0)
        
        // rotate
        if (fabs(progress) < 1) {
            var angle:CGFloat = 0
            if(progress > 0) {
                angle = -CGFloat(M_PI) * (1 - fabs(progress))
            } else {
                angle = CGFloat(M_PI) * (1 - fabs(progress))
            }
            transform.m34 = 1.0 / -600;
            if (fabs(progress) <= 0.5) {
                angle =  CGFloat(M_PI) * progress
                
            }
            transform = CATransform3DRotate(transform,angle,0.0,1.0,0.0)
        }
        
        view.layer.transform = transform;
        
        if(count == numberOfShowView){
            count=0
        }
        var i=progress
        if(i<=0){
            i = i + CGFloat(numberOfShowView)
        }
        i = CGFloat(numberOfShowView)-i
        var t=i % floor(i)
        if(t==0||i==0){
            if(count == 0){
                index = Int(i)
                println(index)
                for m in music {
                    if m.musicID==index{
                        if m.hasBeenBought==true{
                            buyButton.setTitle("hasBeenBought", forState: UIControlState.Normal)
                        }else{
                            buyButton.setTitle("buy", forState: UIControlState.Normal)
                        }
                    }
                }
                buyButton.hidden=false

            }
        }else{
            buyButton.setTitle("", forState: UIControlState.Normal)
            buyButton.hidden=true
        }
        count++
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
class musicBuyer: NSObject {
    var musicID = 0
    var hasBeenBought = false
}
