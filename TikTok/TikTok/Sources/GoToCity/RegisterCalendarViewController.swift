//
//  RegisterCalendarViewController.swift
//  TikTok
//
//  Created by IJ . on 2019/12/29.
//  Copyright © 2019 김준성. All rights reserved.
//

import UIKit

class RegisterCalendarViewController: UIViewController {

    @IBOutlet weak var closedButton: UIButton!
    @IBOutlet weak var startLabel: UILabel!
    
    @IBOutlet weak var arrivedLabel: UILabel!
    @IBOutlet weak var startDatePicker: UIDatePicker!
    @IBOutlet weak var arrivedDatePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpClosedButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func changedStartDatePicker(_ sender: Any) {
          let dateformatter = DateFormatter()
        dateformatter.dateStyle = .short
        
        let date = dateformatter.string(from: startDatePicker.date)
        
        startLabel.text = date

    }
    
    @IBAction func changedArrivedDatePicker(_ sender: Any) {
        let dateformatter = DateFormatter()
             dateformatter.dateStyle = .short
         
             let date = dateformatter.string(from: startDatePicker.date)
             
          arrivedLabel.text = date
        
       //작업해야할 부분
        //두루루 asdfasdf
        
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
