//
//  ViewController.swift
//  TableView
//
//  Created by Tudor Munteanu on 25/03/15.
//  Copyright (c) 2015 http://mowowstudios.com. All rights reserved.
//

import UIKit

let cellIdentifier = "cell"

public class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    public var tableView:UITableView!
    public let timeMachine = TimeMachine()
    public var years = [String]()

    override public func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: self.view.frame, style: .Plain)
        self.view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        loadData()
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Private
    
    private func loadData() {
        
        for index in 0..<100 {
            
            let year = timeMachine.goBackInTime(index)
            let yearString = "Year \(year)"
            years.append(yearString)
        }
    }
    
    // MARK: UITableViewDataSource
    
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as? UITableViewCell
        
        if cell == nil {
            
            cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: cellIdentifier)
        }
        let year = years[indexPath.row]
        cell?.textLabel?.text = year
        return cell!
    }
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return years.count
    }
    
    // MARK: UITableViewDelegate

    

}

