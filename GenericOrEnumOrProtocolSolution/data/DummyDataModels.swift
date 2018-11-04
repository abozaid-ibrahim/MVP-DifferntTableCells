//
//  DummyDataModels.swift
//  GenericOrEnumOrProtocolSolution
//
//  Created by Abuzeid Ibrahim on 11/4/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import Foundation
struct PrivateUserViewModel: UserDataModel{
    var posts: Int
    
    let name:String
}


struct GoldUserViewModel: UserDataModel{
    var posts: Int
    
    let name:String
}




struct GuestUserViewModel: UserDataModel{
    var posts: Int
    
    let name:String
}


