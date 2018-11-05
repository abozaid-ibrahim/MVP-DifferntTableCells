//
//  UserCell.swift
//  GenericOrEnumOrProtocolSolution
//
//  Created by Abuzeid Ibrahim on 11/4/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//
import UIKit
protocol UserCell{
    associatedtype DataModel:UserDataModel
    
    static var id:String {get}
    func setUserData(data:DataModel)
}


enum UserTypes{
    case privateUser,
    goldUser,
    guestUser
}
