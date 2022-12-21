//
//  ViewController.swift
//  SwiftBasic04_SubmitValue
//
//  Created by 비바 on 2022/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var isUpdate: UISwitch!
    @IBOutlet weak var interval: UIStepper!
    @IBOutlet weak var isUpdateText: UILabel!
    @IBOutlet weak var intervalText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onSubmit(_ sender: Any) {
        guard let rcv = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else {
            return
            }
        rcv.paramEmail = self.email.text!
        rcv.paramUpdate = self.isUpdate.isOn
        rcv.paramInterval = self.interval.value
        self.present(rcv, animated: true)
    }
    @IBAction func onSwitch(_ sender: UISwitch) {
//        guard let obj = sender as? UISwitch else{
//            return
//        }
        if (sender.isOn == true){
            self.isUpdateText.text = "자동갱신"
        }
        else{
            self.isUpdateText.text = "자동갱신 안함"
        }
        
    }
    
    @IBAction func onStepper(_ sender: UIStepper) {
        //let obj = sender as! UIStepper
        let value = Int(sender.value)
        self.intervalText.text = "\(value)분마다"
    }
}

