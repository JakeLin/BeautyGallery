//
//  ViewController.swift
//  BeautyGallery
//
//  Created by Jake Lin on 29/08/2014.
//  Copyright (c) 2014 rushjet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var beautyPicker: UIPickerView!
    
    let beauties = ["范冰冰", "李冰冰", "王菲", "杨幂", "周迅"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue:
        UIStoryboardSegue, sender: AnyObject!) {
            if segue.identifier == "GoToGallery" {
                let index = beautyPicker.selectedRowInComponent(0)
                
                var vc = segue.destinationViewController as GalleryViewController
                switch index {
                case 0:
                    vc.imageName = "fanbingbing"
                case 1:
                    vc.imageName = "libingbing"
                case 2:
                    vc.imageName = "wangfei"
                case 3:
                    vc.imageName = "yangmi"
                case 4:
                    vc.imageName = "zhouxun"
                default:
                    vc.imageName = nil
                }
            }
    }
    
    @IBAction func close(segue: UIStoryboardSegue) {
        println("closed!")
    }
}

