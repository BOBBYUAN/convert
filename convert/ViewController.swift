//
//  ViewController.swift
//  convert
//
//  Created by Yuan WangCheng on 1/18/17.
//  Copyright © 2017 WangCheng Yuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    
    
    
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var displayTwo: UILabel!
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var mileInput: UITextField!
    @IBOutlet weak var meterInput: UITextField!
    
    let lengths : [String] = ["Kilometer","Foot","Inch"]
    
    let converValue : [Double] = [1.60934,5280,63360]
    var myconvertVale = 1.60934
    var convertBalance = 0.0
    
    var basicValue = 0.0;
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mileInput.addTarget(self, action: #selector(ViewController.textTrick(_:)), forControlEvents: .EditingChanged)
        pickerView.reloadAllComponents()
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return lengths.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return lengths[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myconvertVale = converValue[row]
    }
    
    
    
    @IBAction func textTrick(sender: UITextField) {
        meterInput.text = mileInput.text
    }
  
    
    
    

    
    
    
    
    
    
    
    
    
    
    @IBAction func doConvert(sender: UIButton) {
        var value = Double(input.text!)
       
        value = value! * myconvertVale
        display.text = String(value!)
    }
    
    
    
    
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
 

    
    
   

}

