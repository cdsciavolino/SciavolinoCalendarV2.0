//
//  DayToSave.swift
//  FinalProject
//
//  Created by Chris Sciavolino on 2/29/16.
//  Copyright © 2016 Chris Sciavolino. All rights reserved.
//

import Foundation
import CoreData


class DayToSave: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    var month: Month?
    var dayNumValue: Int?
    
    override init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
        super.init(entity: entity, insertInto: context)
    }

    
    func getDescription() -> String {
        return self.dateString!
    }
    
    
    func configureDateString() {
        self.dateString = "\(month!.monthValue)/\(dayNumValue!)/\(month!.currentYear)"
    }
    
    
    func containsData() -> Bool {
        return !self.savedText!.isEmpty
    }

}
