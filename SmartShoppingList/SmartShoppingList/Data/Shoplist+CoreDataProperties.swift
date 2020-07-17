//
//  Shoplist+CoreDataProperties.swift
//  SmartShoppingList
//
//  Created by naga vineel golla on 7/17/20.
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
    @NSManaged public var locationset: Bool
    @NSManaged public var locationname: String?
    @NSManaged public var totalitems: Int64
    @NSManaged public var totalmarked: Int64
    @NSManaged public var itemlistrelation: NSOrderedSet?

}

// MARK: Generated accessors for itemlistrelation
extension Shoplist {

    @objc(insertObject:inItemlistrelationAtIndex:)
    @NSManaged public func insertIntoItemlistrelation(_ value: Itemlist, at idx: Int)

    @objc(removeObjectFromItemlistrelationAtIndex:)
    @NSManaged public func removeFromItemlistrelation(at idx: Int)

    @objc(insertItemlistrelation:atIndexes:)
    @NSManaged public func insertIntoItemlistrelation(_ values: [Itemlist], at indexes: NSIndexSet)

    @objc(removeItemlistrelationAtIndexes:)
    @NSManaged public func removeFromItemlistrelation(at indexes: NSIndexSet)

    @objc(replaceObjectInItemlistrelationAtIndex:withObject:)
    @NSManaged public func replaceItemlistrelation(at idx: Int, with value: Itemlist)

    @objc(replaceItemlistrelationAtIndexes:withItemlistrelation:)
    @NSManaged public func replaceItemlistrelation(at indexes: NSIndexSet, with values: [Itemlist])

    @objc(addItemlistrelationObject:)
    @NSManaged public func addToItemlistrelation(_ value: Itemlist)

    @objc(removeItemlistrelationObject:)
    @NSManaged public func removeFromItemlistrelation(_ value: Itemlist)

    @objc(addItemlistrelation:)
    @NSManaged public func addToItemlistrelation(_ values: NSOrderedSet)

    @objc(removeItemlistrelation:)
    @NSManaged public func removeFromItemlistrelation(_ values: NSOrderedSet)

}
