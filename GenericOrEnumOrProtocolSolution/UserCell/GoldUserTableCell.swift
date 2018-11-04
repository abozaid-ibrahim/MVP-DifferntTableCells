//
//  GoldUserTableCell.swift
//  GenericOrEnumOrProtocolSolution
//
//  Created by Abuzeid Ibrahim on 11/4/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import UIKit

class GoldUserTableCell: UITableViewCell,UserCell {
    func setUserData(data: UserDataModel) {
        let user = data as! GoldUserViewModel
        countLbl.text = user.name
    }
    
    static var id: String = "GoldUserTableCell"
    @IBOutlet weak var countLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }


}
