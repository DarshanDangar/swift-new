//
//  SwitchViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 24/05/23.
//

import UIKit

class SwitchViewController: BaseViewController {
    
    // MARK: Outlets
    @IBOutlet weak var btnisDesigner: UIButton!
    @IBOutlet weak var btnisDeveloper: UIButton!
    @IBOutlet weak var btnisAdministrative: UIButton!
   
    @IBOutlet weak var switchSelect: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchSelect.isOn = false
    }
    
    
    @IBAction func switchTap(_ sender: UISwitch) {
        if switchSelect.isOn {
            btnisDesigner.isSelected = true
            btnisDeveloper.isSelected = true
            btnisAdministrative.isSelected = true
            
        } else {
            btnisDesigner.isSelected = false
            btnisDeveloper.isSelected = false
            btnisAdministrative.isSelected = false
        }
        
    }
    
//    @IBAction func btnOnTapDesigner(_ sender: UIButton) {
//        if(btnisDesigner.isSelected) {
//            btnisDesigner.setImage(UIImage(named: "sucessimage"), for: .selected)
//            btnisDesigner.isSelected = false
//        } else {
//            btnisDesigner.setImage(UIImage(named: "simpleCircle"), for: .normal)
//            btnisDesigner.isSelected = true
//        }
//
//    }
//
//    @IBAction func btnOnTapDeveloper(_ sender: UIButton) {
//        if(btnisDeveloper.isSelected) {
//            btnisDeveloper.setImage(UIImage(named: "sucessimage"), for: .selected)
//            btnisDeveloper.isSelected = false
//        } else {
//            btnisDeveloper.setImage(UIImage(named: "simpleCircle"), for: .normal)
//            btnisDeveloper.isSelected = true
//        }
//    }
//
//
//    @IBAction func btnOnTapAdministrative(_ sender: UIButton) {
//        if(btnisAdministrative.isSelected){
//            btnisAdministrative.setImage(UIImage(named: "sucessimage"), for: .selected)
//            btnisAdministrative.isSelected = false
//        } else {
//            btnisAdministrative.setImage(UIImage(named: "simpleCircle"), for: .normal)
//            btnisAdministrative.isSelected = true
//        }
//    }
    
    @IBAction func btnOnTap(_ sender: UIButton) {
        if(sender == btnisDesigner) {
            btnisDesigner.isSelected = true
            btnisDeveloper.isSelected = false
            btnisAdministrative.isSelected = false
            switchSelect.isOn = false
        } else if(sender == btnisDeveloper) {
            btnisDesigner.isSelected = false
            btnisDeveloper.isSelected = true
            btnisAdministrative.isSelected = false
            switchSelect.isOn = false
        } else {
            btnisAdministrative.isSelected = true
            btnisDeveloper.isSelected = false
            btnisDesigner.isSelected = false
            switchSelect.isOn = false
        }
    }
    
    
}
