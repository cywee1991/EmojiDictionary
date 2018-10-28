//
//  ViewController.swift
//  emojiDictionary
//
//  Created by Chan Yan wee on 28/10/18.
//  Copyright © 2018 Chan Yan wee. All rights reserved.
//  Easy Dictionary

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emoTable: UITableView!
    
    var emojis = ["☺️","🤯","😛","🐱","🐹"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emoTable.dataSource = self
        emoTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

