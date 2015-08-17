//
//  BuyViewController.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015年 yjq131250077. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var items=["小苹果","眼泪","傻吊应佳琪","帅哥马长松","啊","妈的还有谁","a","b","c"]
    var item = [musicName]()
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var musicPriceField: UITextField!
    @IBOutlet weak var musicTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buyMusic(sender: AnyObject) {
    }
    func tableView(tableView:UITableView,numberOfRowsInSection section: Int) -> Int{
        return self.items.count
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        var row=indexPath.row as Int
        cell.textLabel!.text=self.items[row]
        
        return cell;
    }
    
    //点击表格触发事件
//    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
//        
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
class musicName: NSObject {
    var name = ""
    var selected = false
}
