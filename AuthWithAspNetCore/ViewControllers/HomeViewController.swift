//
//  HomeViewController.swift
//  AuthWithAspNetCore
//
//  Created by Rafael Adolfo on 29/01/19.
//  Copyright © 2019 Rafael Adolfo. All rights reserved.
//

import UIKit

//wip - not finished yet
class HomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareScreen()
    }

    func prepareScreen(){
        let welcomeText = "Welcome, "
        welcomeLabel.text = welcomeText + AuthenticationService.instance.firstName
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
