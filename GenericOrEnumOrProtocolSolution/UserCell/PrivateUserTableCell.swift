//
//  PrivateUserTableCell.swift
//  GenericOrEnumOrProtocolSolution
//
//  Created by Abuzeid Ibrahim on 11/4/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import UIKit

class PrivateUserTableCell: UITableViewCell,UserCell {
    static var id: String = "PrivateUserTableCell"
    
    @IBOutlet weak var countLbl: UILabel!
    func setUserData(data: PrivateUserViewModel) {
        countLbl.text = data.name
        print("set my fields")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

   
    
}
