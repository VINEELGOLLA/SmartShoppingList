//
//  MainViewModel.swift
//  SmartShoppingList
//
//  Created by naga vineel golla on 7/15/20.
//  Copyright © 2020 naga vineel golla. All rights reserved.
//

import UIKit

protocol MainViewModelDelegate  {
    func fetchalldata(list: [Shoplist])
    func fetchandreload(list: [Shoplist])
}

class MainViewModel {
    
    var delegate: MainViewModelDelegate?
    
    var lists: [Shoplist] = []
    
    func fetchallrecords() {
        lists = DataManager.shared.getallrecords()
        delegate?.fetchalldata(list: lists)
    }
    
    func addlist(list: String) {
        DataManager.shared.saverecord(name: list, date: Date(), id: UUID()){ Result in
            switch Result{
            case .success:
                print("vineelerror")
                
                self.lists = DataManager.shared.getallrecords()
                self.delegate?.fetchandreload(list: self.lists)
            case .failure:
                print("error")
            }
            
        }
        
//        lists = DataManager.shared.getallrecords()
//        delegate?.fetchandreload(list: lists)
    }
    
    func deletelist(id: UUID) {
        DataManager.shared.removerecord(id: id)
    }
}

