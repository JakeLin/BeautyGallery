//
//  ViewControllerExtension.swift
//  BeautyGallery
//
//  Created by Jake Lin on 28/08/2014.
//  Copyright (c) 2014 rushjet. All rights reserved.
//


import UIKit
extension ViewController: UIPickerViewDataSource {
    // two required methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return beauties.count
    }
}


extension ViewController: UIPickerViewDelegate {
    // several optional methods:

    // func pickerView(pickerView: UIPickerView!, widthForComponent component: Int) -> CGFloat

    // func pickerView(pickerView: UIPickerView!, rowHeightForComponent component: Int) -> CGFloat

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return beauties[row]
    }

    // func pickerView(pickerView: UIPickerView!, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString!

    // func pickerView(pickerView: UIPickerView!, viewForRow row: Int, forComponent component: Int, reusingView view: UIView!) -> UIView!

    // func pickerView(pickerView: UIPickerView!, didSelectRow row: Int, inComponent component: Int)
}
