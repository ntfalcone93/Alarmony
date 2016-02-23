//
//  Alarm+CoreDataProperties.swift
//  Alarmony
//
//  Created by Nathan on 2/22/16.
//  Copyright © 2016 FalcOne Development. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Alarm {

    @NSManaged var isOn: NSNumber?
    @NSManaged var alarmName: String?
    @NSManaged var repeatAlarm: String?
    @NSManaged var snoozeEnabled: NSNumber?
    @NSManaged var alarmSound: String?
    @NSManaged var alarmTime: NSDate?

}
