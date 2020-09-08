//
//  ContactInfo.swift
//  Contacts
//
//  Created by Akhil Jain on 03/09/20.
//  Copyright © 2020 Akhil Jain. All rights reserved.
//

import Foundation
import UIKit

class ContactInfo : UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var workTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    
    var contactName : String = ""
    var contactPhone : String = ""
    var contactWork : String = ""
    var contactEmail : String = ""
    var contactBirthday : String = ""
    var contactImage : UIImage = UIImage(named: "default.png")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = contactImage
        imageView.layer.borderWidth=1.0
        imageView.layer.masksToBounds = false
        //imageView.layer.borderColor = UIColor.whiteColor().CGColor
        imageView.layer.cornerRadius = imageView.frame.size.height/2
        imageView.clipsToBounds = true
        
        nameTextField.text = contactName
        phoneTextField.text = contactPhone
        workTextField.text = contactWork
        emailTextField.text = contactEmail
        birthdayTextField.text = contactBirthday
    }

}
