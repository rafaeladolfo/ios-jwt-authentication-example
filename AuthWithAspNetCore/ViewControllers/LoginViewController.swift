//
//  LoginViewController.swift
//  AuthWithAspNetCore
//
//  Created by Rafael Adolfo on 29/01/19.
//  Copyright © 2019 Rafael Adolfo. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.isHidden = true
    }

    @IBAction func loginButtonWasPressed(_ sender: UIButton) {
        guard let login = loginText.text , loginText.text != "" else { return }
        guard let password = passwordText.text , passwordText.text != "" else { return }
        
        //display the spinner
        let spinner = UIViewController.displaySpinner(onView: self.view)
        
        AuthenticationService.instance.login(login: login, password: password) { (success) in
            if success {
                self.performSegue(withIdentifier: "segueLoginSuccess", sender: self)
            } else {
                self.messageLabel.isHidden = false
                self.messageLabel.text = "Your login has failed, please try again."
            }
            //remove our spinner
            UIViewController.removeSpinner(spinner: spinner)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
