//
//  Shoplist+CoreDataProperties.swift
//  SmartShoppingList
//
//  Created by naga vineel golla on 7/16/20.
//  Copyright © 2020 naga vineel golla. All rights reserved.
//
//

import Foundation
import CoreData


extension Shoplist {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Shoplist> {
        return NSFetchRequest<Shoplist>(entityName: "Shoplist")
    }

    @NSManaged public var date: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?

}
