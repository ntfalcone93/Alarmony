//
//  AlarmDetailTableViewController.swift
//  Alarmony
//
//  Created by Nathan on 2/19/16.
//  Copyright © 2016 FalcOne Development. All rights reserved.
//

import UIKit

class AlarmDetailTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0:
            return 1
        case 1:
            return 4
        case 2:
            return 1
        default:
            return 0
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let pickerCell = tableView.dequeueReusableCellWithIdentifier("pickerViewCell", forIndexPath: indexPath) as! PickerTableViewCell
            return pickerCell
        case 1:
            switch indexPath.row {
            case 0:
                let repeatCell = tableView.dequeueReusableCellWithIdentifier("repeatCell", forIndexPath: indexPath) as! RepeatTableViewCell
                return repeatCell
            case 1:
                let labelCell = tableView.dequeueReusableCellWithIdentifier("labelCell", forIndexPath: indexPath) as! AlarmNameTableViewCell
                return labelCell
            case 2:
                let soundCell = tableView.dequeueReusableCellWithIdentifier("soundCell", forIndexPath: indexPath) as! SoundTableViewCell
                return soundCell
            case 3:
                let snoozeCell = tableView.dequeueReusableCellWithIdentifier("snoozeCell", forIndexPath: indexPath) as! SnoozeTableViewCell
                return snoozeCell
            default:
                let cell = tableView.dequeueReusableCellWithIdentifier("crashCell", forIndexPath: indexPath)
                return cell
            }
        case 2:
            let deleteCell = tableView.dequeueReusableCellWithIdentifier("deleteCell", forIndexPath: indexPath) as! DeleteAlarmTableViewCell
            return deleteCell
        default:
            let cell = tableView.dequeueReusableCellWithIdentifier("crashCell", forIndexPath: indexPath)
            return cell
        }
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 186
        default:
            return 44
        }
    }
}
