//
//  ItemListViewController.swift
//  ToDo
//
//  Created by Leonardo Vinicius Kaminski Ferreira on 13/07/17.
//  Copyright © 2017 iOS Wizards. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {

    @IBOutlet var tableView: UITableView?
    @IBOutlet var dataProvider: (UITableViewDataSource & UITableViewDelegate)!
    
    let itemManager = ItemManager()
    
    override func viewDidLoad() {
        tableView?.dataSource = dataProvider
        tableView?.delegate = dataProvider
    }
    
    @IBAction func addItem(_ sender: UIBarButtonItem) {
        if let nextViewController = storyboard?.instantiateViewController(withIdentifier: "InputViewController") as? InputViewController {
            nextViewController.itemManager = self.itemManager
            present(nextViewController, animated: true, completion: nil)
        }
    }
    
    
}
