//
//  CurrencyListViewController.swift
//  CurrencyConverter
//
//  Created by Admin on 16/08/2019.
//  Copyright © 2019 Sergey. All rights reserved.
//

import UIKit

class CurrencyListViewController: UIViewController, UITableViewDelegate {

    var tableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Выбор валюты"
        self.tableView = UITableView(frame: view.bounds, style: .plain)
        self.tableView.delegate = self
        view.addSubview(tableView)
    }

}
