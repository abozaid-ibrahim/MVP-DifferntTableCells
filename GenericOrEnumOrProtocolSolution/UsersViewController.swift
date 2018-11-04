//
//  ViewController.swift
//  GenericOrEnumOrProtocolSolution
//
//  Created by Abuzeid Ibrahim on 11/4/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import UIKit

class UsersViewController: UIViewController{
    
    
    @IBOutlet weak var tableView: UITableView!
    var user:UserDataModel!
    var userType:UserTypes!
    
    
    private let presenter = UsersPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerTableCell(usertype: userType)
        self.presenter.attach(view: self)
        presenter.loadData(userType: userType)
        
    }
    
    
    private func registerTableCell(usertype: UserTypes){
        switch usertype {
        case .privateUser:
            self.tableView.register(UINib(nibName: "PrivateUserTableCell", bundle: nil), forCellReuseIdentifier: PrivateUserTableCell.id)
            
        case .goldUser:
            self.tableView.register(UINib(nibName: "GoldUserTableCell", bundle: nil), forCellReuseIdentifier: GoldUserTableCell.id)
        case .guestUser:
            self.tableView.register(UINib(nibName: "PublicUserTableCell", bundle: nil), forCellReuseIdentifier: PublicUserTableCell.id)
        }
    }
    
    
}
extension UsersViewController:UsersView{
    func setUser(user: UserDataModel) {
        self.user = user
        self.tableView.reloadData()
    }
    
    
}

extension UsersViewController :UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let id = presenter.getCellId(user: userType)
        let cell  = tableView.dequeueReusableCell(withIdentifier: id) as! UserCell
        cell.setUserData(data: user)
        return cell as! UITableViewCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
}
