//
//  DataManager.swift
//  SmartShoppingList
//
//  Created by naga vineel golla on 7/15/20.
//  Copyright © 2020 naga vineel golla. All rights reserved.
//

import Foundation
import CoreData
import UIKit

public enum Result<Success, Failure> {
case success
case failure
}


class DataManager {
    
    static let shared = DataManager(moc: NSManagedObjectContext.current)
    
    var managedcontext : NSManagedObjectContext
    
    private init(moc: NSManagedObjectContext){
        self.managedcontext = moc
    }
    
//    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
//    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//
    
    // get records
    func getallrecords() -> [Shoplist] {
        var list = [Shoplist]()
        
        //2
        let fetchRequest = NSFetchRequest<Shoplist>(entityName: "Shoplist")
        let sort = NSSortDescriptor(key: "date", ascending: false)
        fetchRequest.sortDescriptors = [sort]
        
        do {
            list = try managedcontext.fetch(fetchRequest)
            print("saved90")

        }catch let error as NSError{
            print("error could not fetch \(error), \(error.userInfo)")
        }
        return list
    }
    
    //save record
    func saverecord(name: String,date : Date, id : UUID, completion: @escaping (_ result: Result<Any, Any>) -> ()) {
        let entity = NSEntityDescription.entity(forEntityName: "Shoplist",in: managedcontext)!
        
        let person = NSManagedObject(entity: entity,insertInto: managedcontext)
        
        person.setValue(date, forKey: "date")
        person.setValue(name, forKeyPath: "name")
        person.setValue(id, forKey: "id")
        
//        let addlist = Shoplist(context: self.managedcontext) 
//        addlist.name = name
        print("saved2")

        do{
            try self.managedcontext.save()
            completion(Result.success)
        } catch {
            print("cannot save error \(error)")
            completion(Result.failure)

        }
        
    }
    
    //remove record
    func removerecord(id: UUID) {
        
        print("lop3 \(id)")

        let fetchRequest: NSFetchRequest<Shoplist> = Shoplist.fetchRequest()
        fetchRequest.predicate = NSPredicate.init(format: "id = %@", id.uuidString)
        do {
            let lists = try self.managedcontext.fetch(fetchRequest)
            for list in lists{
                self.managedcontext.delete(list)
            }
            try self.managedcontext.save()
        } catch {
            print(error)
        }
    }
}

extension NSManagedObjectContext {
    static var current : NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
        
    }
}
