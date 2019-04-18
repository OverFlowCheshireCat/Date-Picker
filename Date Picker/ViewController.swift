//
//  ViewController.swift
//  Date Picker
//
//  Created by dit03 on 2019. 4. 18..
//  Copyright © 2019년 201730529. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectData: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    let format = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let locale = Locale(identifier: "ko-KO")
        
        datePicker.locale = locale
        datePicker.datePickerMode = UIDatePicker.Mode.date

        writeDate()
    }


    @IBAction func datePickerCheck(_ sender: Any) {
        writeDate()
    }
    
    func writeDate() {
        format.dateFormat = "yyyy-MM-dd HH:mm EEE"
        
        selectData.text = format.string(from: datePicker.date)
    }
}

