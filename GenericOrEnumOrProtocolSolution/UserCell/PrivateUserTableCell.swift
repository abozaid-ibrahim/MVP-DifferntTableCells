//
//  PrivateUserTableCell.swift
//  GenericOrEnumOrProtocolSolution
//
//  Created by Abuzeid Ibrahim on 11/4/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import UIKit

class PrivateUserTableCell: UITableViewCell,UserCell {
 
    func setUserInfo(data: UserDataModel) {
        let user = data as! PrivateUserViewModel
        countLbl.text = user.name
    }
    
    func setUserData<T>(data: T) where T : UserDataModel {
        let user = data as! PrivateUserViewModel
        countLbl.text = user.name
    }
    
    static var id: String = "PrivateUserTableCell"
    
    @IBOutlet weak var countLbl: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
    }

   
    
}
