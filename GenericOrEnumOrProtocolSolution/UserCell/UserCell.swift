//
//  UserCell.swift
//  GenericOrEnumOrProtocolSolution
//
//  Created by Abuzeid Ibrahim on 11/4/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import Foundation
protocol UserCell{
    static var id:String {get}
    func setUserData(data:UserDataModel)
}


enum UserTypes{
    case privateUser,
    goldUser,
    guestUser
}
