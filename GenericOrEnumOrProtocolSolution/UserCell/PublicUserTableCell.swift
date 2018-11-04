//
//  PublicUserTableCell.swift
//  GenericOrEnumOrProtocolSolution
//
//  Created by Abuzeid Ibrahim on 11/4/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import UIKit

class PublicUserTableCell: UITableViewCell,UserCell {
    static var id: String = "PublicUserTableCell"
    
    @IBOutlet weak var countLbl: UILabel!
    func setUserData(data: UserDataModel) {
        let user = data as! GuestUserViewModel
        countLbl.text = user.name
        print("set my fields")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }


    
}
