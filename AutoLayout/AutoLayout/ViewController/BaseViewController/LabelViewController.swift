//
//  LabelViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 23/05/23.
//

import UIKit

class LabelViewController: UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let labelb = UILabel(frame: CGRect(x: 40, y: 600, width: view.bounds.size.width*0.8, height: 30))
        view.addSubview(labelb)
        labelb.backgroundColor = .red
        labelb.text = "Darshan Dangar"
        labelb.textColor = .black
        labelb.textAlignment = .center
        
        
        
//        lblView.attributedText = NSAttributedString(string: "My name is darshan dangar, my friend name is shubham bhatt")
        lblName.textColor = UIColor.red
        lblName.text = "Name"
        lblName.isEnabled = true
        lblName.textAlignment = NSTextAlignment.center
        lblView.adjustsFontSizeToFitWidth = true
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
