//
//  ViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 13/05/23.
//

import UIKit

class ViewController: BaseViewController {
    
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtEmail.layer.borderWidth = 1.5
        txtEmail.layer.cornerRadius = 10
        txtEmail.layer.borderColor = UIColor.white.cgColor
        txtPassword.layer.borderWidth = 1.5
        txtPassword.layer.cornerRadius = 10
        txtPassword.layer.borderColor = UIColor.white.cgColor
        btnLogin.layer.cornerRadius = 16
        txtEmail.leftPaddingWithImageInTextField(padding: 40.0, imageView: "mail")
        txtPassword.leftPaddingWithImageInTextField(padding: 40.0, imageView: "password")

        txtPassword.rightPaddingWithImageInTextField(padding: 40.0, imgName: "show")
        //txtEmail.textColor = UIColor(named: "pureWhite")
        //        txtEmail.leftViewMode = UITextField.ViewMode.always
        //        let imageView = UIImageView(frame: CGRect(x: 5, y: 0, width: 20, height: 20))
        //        txtEmail.leftView = imageView
    }
 
    override func viewDidLayoutSubviews() {
        img1.layer.cornerRadius = img1.frame.size.height / 2
        img3.layer.cornerRadius = img3.frame.size.height / 2
        img2.layer.cornerRadius = img2.frame.size.height / 2
    }
    
}

extension UITextField {
    func leftMarginInTextField(padding: Double) {
        let leftView = UIView()
        leftView.frame = CGRect.init(x: 0, y: 0, width: padding, height: self.frame.size.height)
        self.leftView = leftView
        self.leftViewMode = .always
    }
    
    func rightMarginInTextField(padding: Double) {
        let rightView = UIView()
        rightView.frame = CGRect.init(x: 0, y: 0, width: padding, height: self.frame.size.height)
        self.rightView = rightView
        self.rightViewMode = .always
    }
    
    func leftPaddingWithImageInTextField(padding: Double, imageView: String) {
        let leftView = UIView()
        leftView.frame = CGRect.init(x: 0.0, y: 0.0, width: padding, height: self.frame.size.height)
        let imgView = UIImageView()
        imgView.frame = CGRect.init(x: 10, y: 10, width: padding-20, height: self.frame.size.height - 20.0)
        imgView.tintColor = UIColor.black
        imgView.image = UIImage.init(named: imageView)
        leftView.addSubview(imgView)
        self.leftView = leftView
        self.leftViewMode = .always
    }
    
    func rightPaddingWithImageInTextField(padding: Double, imgName: String) {
        let rightView = UIView()
        rightView.frame = CGRect.init(x: 0, y: 0, width: padding, height: self.frame.size.height)
        let imgView = UIImageView()
        imgView.frame = CGRect.init(x: 10, y: 10, width: padding-20, height: self.frame.size.height - 20.0)
        imgView.tintColor = UIColor.white
        imgView.image = UIImage.init(named: imgName)
        rightView.addSubview(imgView)
        self.rightView = rightView
        self.rightViewMode = .always
    }
}





