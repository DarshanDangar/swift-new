//
//  BtnViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 23/05/23.
//

import UIKit

class BtnViewController: BaseViewController {
    
    @IBOutlet weak var btnBlue: UIButton!
    @IBOutlet weak var btnR: UIButton!
    @IBOutlet weak var btnDisabled: UIButton!
    @IBOutlet weak var btnSelected: UIButton!
    @IBOutlet weak var btnHighlighted: UIButton!
    @IBOutlet weak var btn: UIButton!
    var taped = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnDisabled.setTitle("Disabled", for: .disabled)
        btnSelected.setTitle("Selected", for: .selected)
        btnSelected.isSelected = true
        btnHighlighted.setTitle("Highlighted", for: .highlighted)
        btnHighlighted.isHighlighted = true
        btnDisabled.isEnabled = false
        btnR.isSelected = true
        btnBlue.isSelected = true
    }
    
    @IBAction func btnBlue(_ sender: Any) {
        if(btnBlue.isSelected) {
            btnBlue.backgroundColor = .blue
            btnBlue.isSelected = false
        } else {
            btnBlue.backgroundColor = .yellow
            btnBlue.isSelected = true
        }
    }
    @IBAction func btnRed(_ sender: Any) {
        if(btnR.isSelected) {
            btnR.backgroundColor = .red
            btnR.isSelected = false
        } else {
            btnR.backgroundColor = .yellow
            btnR.isSelected = true
        }
    }
    @IBAction func btnOnClickChaneColor(_ sender: UIButton) {
        if(taped) {
            view.backgroundColor = .blue
            taped = false
        } else {
            view.backgroundColor = .white
            taped = true
        }
    }
    
}
