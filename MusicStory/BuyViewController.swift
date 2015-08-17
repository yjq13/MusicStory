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
   
    @IBOutlet weak var musicTable: UITableView!
    @IBOutlet weak var musicPriceLabel: UILabel!
    
    var price=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for var i=0;i<items.count;i++ {
            var tem=musicName()
            tem.name=items[i]
            tem.selected=false
            item.append(tem)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buyMusic(sender: AnyObject) {
    }
    func tableView(tableView:UITableView,numberOfRowsInSection section: Int) -> Int{
        return self.item.count
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        let music = item[indexPath.row]
        
        cell.textLabel!.text = music.name
        
        return cell;
    }
    
    //点击表格触发事件
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let music = item[indexPath.row]
        music.selected = !music.selected;
        
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        cell?.backgroundColor = UIColor.clearColor()
        if(music.selected){
            cell?.accessoryType = UITableViewCellAccessoryType.Checkmark
        
        }else{
            cell?.accessoryType = UITableViewCellAccessoryType.None
        }

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
class musicName: NSObject {
    var name = ""
    var selected = false
}
