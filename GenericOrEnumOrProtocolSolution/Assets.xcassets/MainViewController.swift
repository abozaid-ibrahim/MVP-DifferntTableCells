//
//  MainViewController.swift
//  GenericOrEnumOrProtocolSolution
//
//  Created by Abuzeid Ibrahim on 11/4/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let vc =  segue.destination as! UsersViewController
        switch (segue.identifier ?? "") {
        case "private":
            vc.userType = .privateUser
        case "guest":
            vc.userType = .guestUser
        case "gold":
            vc.userType = .goldUser
        default:
            fatalError()
        }
    }

}
