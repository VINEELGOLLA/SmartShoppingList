//
//  Itemlist+CoreDataProperties.swift
//  SmartShoppingList
//
//  Created by naga vineel golla on 7/17/20.
//  Copyright © 2020 naga vineel golla. All rights reserved.
//
//

import Foundation
import CoreData


extension Itemlist {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Itemlist> {
        return NSFetchRequest<Itemlist>(entityName: "Itemlist")
    }

    @NSManaged public var itemname: String?
    @NSManaged public var mark: Bool
    @NSManaged public var itemvalue: Int64
    @NSManaged public var itemnotes: String?
    @NSManaged public var order: Int64
    @NSManaged public var date: Date?
    @NSManaged public var itemid: UUID?
    @NSManaged public var shoplist: Shoplist?

}
