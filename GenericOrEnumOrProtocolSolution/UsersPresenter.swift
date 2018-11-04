//
//  UsersPresenter.swift
//  GenericOrEnumOrProtocolSolution
//
//  Created by Abuzeid Ibrahim on 11/4/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import UIKit
protocol UsersView {
    func setUser(user:UserDataModel)
    func setUser<T:UserDataModel>(user:T)
    func setDataSource(sourc:UITableViewDataSource)
}
final class UsersPresenter {
    
    var view:UsersView?
    
    func attach(view:UsersView){
        self.view = view;
    }
    private func getUserData(user:UserTypes)->UserDataModel{
        switch user {
            
        case .privateUser:
            return PrivateUserViewModel(posts: 10, name: "Ali")
        case .goldUser:
            return GoldUserViewModel(posts: 100, name: "Hossam")
        case .guestUser:
            return GuestUserViewModel(posts: 1, name: "Farouk")
        }
    }
    private func getUserDataSource(user:UserTypes)->UITableViewDataSource{
        switch user {
            
        case .guestUser:
            let user =  PrivateUserViewModel(posts: 1, name: "Ali")
            let datasource = UsersTable<PrivateUserViewModel>()
            datasource.user = user
            return datasource
        case .privateUser:
            let user =  PrivateUserViewModel(posts: 10, name: "Memo")
            let datasource = UsersTable<PrivateUserViewModel>()
            datasource.user = user
            return datasource
        case .goldUser:
            let user =  PrivateUserViewModel(posts: 100, name: "sherief")
            let datasource = UsersTable<PrivateUserViewModel>()
            datasource.user = user
            return datasource
            
        }
    }
    
    func loadData(userType:UserTypes){
//        self.view?.setUser(user: getUserData(user: userType))
        self.view?.setDataSource(sourc: getUserDataSource(user: userType))
    }
    func getCellId(user:UserTypes)->String{
        switch user {
            
        case .privateUser:
            return PrivateUserTableCell.id
        case .goldUser:
            return GoldUserTableCell.id
        case .guestUser:
            return PublicUserTableCell.id
        }
    }
    
    
    
}
