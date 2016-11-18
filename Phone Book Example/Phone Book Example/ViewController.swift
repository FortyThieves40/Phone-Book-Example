//
//  ViewController.swift
//  Phone Book Example
//
//  Created by carole lang on 11/17/16.
//  Copyright © 2016 Dana Young. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextBox: UITextField!
    @IBOutlet weak var numberTextBox: UITextField!
    @IBOutlet weak var addressLine1TextBox: UITextField!
    @IBOutlet weak var addressLine2TextBox: UITextField!
    @IBOutlet weak var cityTextBox: UITextField!
    @IBOutlet weak var stateTextBox: UITextField!
    @IBOutlet weak var stateDropDownPicker: UIPickerView!
    @IBOutlet weak var zipTextBox: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //code for drop down state abriviation
    
    let stateAbrvArray = [
        "AK","AL","AZ","AR","CA","CO","CT","DE","DC","FL","GA",
        "HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA",
        "MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY",
        "NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX",
        "UT","VT","VA","WA","WV","WI","WY"
    ]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return stateAbrvArray.count
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        
        self.view.endEditing(true)
        return stateAbrvArray[row]
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.stateTextBox.text = self.stateAbrvArray[row]
        self.stateDropDownPicker.isHidden = true
        
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        
        if textField == self.stateTextBox {
            self.stateDropDownPicker.isHidden = false
            //if you dont want the users to see the keyboard type:
            
            textField.endEditing(true)
        }
    }


}

