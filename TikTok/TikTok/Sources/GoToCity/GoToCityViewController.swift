//
//  GoToCityViewController.swift
//  TikTok
//
//  Created by IJ . on 2019/12/29.
//  Copyright © 2019 김준성. All rights reserved.
//

import UIKit

class GoToCityViewController: UIViewController {
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var RegisterCalendarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cityNameLabel.text = TravelData.userChooseCity
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpBackButton(_ sender: Any) {
         self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func touchUpRegisterButton(_ sender: Any) {
    
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "RegisterVC") as? RegisterCalendarViewController
            else {
                return
        }
        
        self.navigationController?.pushViewController(nextVC, animated: true)
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
