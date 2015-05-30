//
//  ViewController.swift
//  TableView
//
//  Created by Tudor Munteanu on 25/03/15.
//  Copyright (c) 2015 http://mowowstudios.com. All rights reserved.
//

import UIKit

let cellIdentifier = "cell"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView:UITableView!
    let timeMachine = TimeMachine()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: self.view.frame, style: .Plain)
        self.view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITableViewDataSource
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as? UITableViewCell
        
        if cell == nil {
            
            cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: cellIdentifier)
        }
        let year = timeMachine.goBackInTime(indexPath.row)
        cell?.textLabel?.text = "Year  \(year)"
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 100
    }
    
    // MARK: UITableViewDelegate

    

}

