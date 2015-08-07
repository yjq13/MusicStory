//
//  SwitchViewController.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/7/31.
//  Copyright (c) 2015 yjq131250077. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    //let colorclass = color()
    
    var colors = ["None"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //colors = colorclass.getColors()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int)->Int {
        return colors.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return colors[row]
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
