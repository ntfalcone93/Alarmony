//
//  AlarmListTableViewController.swift
//  Alarmony
//
//  Created by Nathan on 2/19/16.
//  Copyright © 2016 FalcOne Development. All rights reserved.
//

import UIKit

class AlarmListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createLocalNotif()
        
        // Edit Button
        self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    func createLocalNotif() {
        let localNotif = UILocalNotification()
        localNotif.alertBody = "This might just work"
        localNotif.alertTitle = "Please work!!"
        localNotif.hasAction = true
        localNotif.category = "categoriesForNotif"
        localNotif.fireDate = NSDate().dateByAddingTimeInterval(5)
        
        // Create action for Local Notification
        let okAction = UIMutableUserNotificationAction()
        okAction.activationMode = .Background
        okAction.identifier = "okAction"
        okAction.title = "OK"
        okAction.destructive = false
        okAction.authenticationRequired = false
        
        let snoozeAction = UIMutableUserNotificationAction()
        snoozeAction.identifier = "snoozeAction"
        snoozeAction.activationMode = .Background
        snoozeAction.title = "Snooze"
        snoozeAction.destructive = false
        snoozeAction.authenticationRequired = false
        
        let categoriesForNotif = UIMutableUserNotificationCategory()
        categoriesForNotif.identifier = "categoriesForNotif"
        categoriesForNotif.setActions([okAction, snoozeAction], forContext: .Default)
//        categoriesForNotif.setActions([okAction, snoozeAction], forContext: .Minimal)
        if let categorySet = NSSet(object: categoriesForNotif) as? Set<UIUserNotificationCategory> {
            let settings = UIUserNotificationSettings(forTypes: [.Alert, .Sound], categories: categorySet)
            UIApplication.sharedApplication().registerUserNotificationSettings(settings)
        }
        
        UIApplication.sharedApplication().scheduleLocalNotification(localNotif)
    }
    
    func setupNotificationActions() {
        
    }
    
    // MARK: - Table view data source
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("alarmCell", forIndexPath: indexPath) as! AlarmTableViewCell
        
        cell.configureCell()
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
    }
}
