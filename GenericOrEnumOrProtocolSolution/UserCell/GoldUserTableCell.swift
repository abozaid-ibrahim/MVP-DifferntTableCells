//
//  GoldUserTableCell.swift
//  GenericOrEnumOrProtocolSolution
//
//  Created by Abuzeid Ibrahim on 11/4/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import UIKit

class GoldUserTableCell: UITableViewCell,UserCell {
    
    @IBAction func printAction(_ sender: UIButton) {
    
    //how to handle this action with users presenter
        
    }
    
    @IBOutlet weak var printButton: UIButton!
    func setUserData(data: GoldUserViewModel) {
        countLbl.text = data.name
    }
    
    static var id: String = "GoldUserTableCell"
    @IBOutlet weak var countLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }


}
