//
//  Alarm.swift
//  Alarmony
//
//  Created by Nathan on 2/22/16.
//  Copyright © 2016 FalcOne Development. All rights reserved.
//

import Foundation
import CoreData

enum RepeatAlarm {
    case everySunday
    case everyMonday
    case everyTuesday
    case everyWednesday
    case everyThursday
    case everyFriday
    case everySaturday
    case never
}

class Alarm: NSManagedObject {
    
    convenience init(alarmName: String, alarmTime: NSDate, repeatAlarm: RepeatAlarm, alarmSound: String, snoozeEnabled: Bool, context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        
    }
}
