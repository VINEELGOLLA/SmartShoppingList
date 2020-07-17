//
//  ListEditViewController.swift
//  SmartShoppingList
//
//  Created by naga vineel golla on 7/8/20.
//  Copyright © 2020 naga vineel golla. All rights reserved.
//

import UIKit

class ListEditViewController: UIViewController {
    
    lazy var firstview : UIView = {
        let firstview = UIView()
        firstview.translatesAutoresizingMaskIntoConstraints = false
        
        firstview.backgroundColor = UIColor.white
        firstview.layer.cornerRadius = 20 / 2
        firstview.layer.shadowOpacity = 0.15
        firstview.layer.shadowRadius = 1
        firstview.layer.shadowOffset = CGSize(width: 0, height: 0)
                
        return firstview
    }()
    
    lazy var listname : UITextField = {
        let listname = UITextField()
        listname.text = "ice cream"
        listname.textAlignment = .left
        listname.textColor = UIColor.black
        listname.translatesAutoresizingMaskIntoConstraints = false

        
        return listname
    }()
    
    lazy var secondview : UIView = {
        let secondview = UIView()
        
        secondview.backgroundColor = UIColor.white
        secondview.layer.cornerRadius = 20 / 2
        secondview.layer.shadowOpacity = 0.15
        secondview.layer.shadowRadius = 1
        secondview.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        secondview.translatesAutoresizingMaskIntoConstraints = false

        
        return secondview
    }()
    
    lazy var location: UILabel = {
        let location = UILabel()
        location.text = "Set a Location.."
        location.translatesAutoresizingMaskIntoConstraints = false

        return location
    }()
    
    
    lazy var image1 : UIImageView = {
        let image1 = UIImageView()
        image1.translatesAutoresizingMaskIntoConstraints = false
        image1.image = UIImage(systemName: "chevron.right")
        image1.tintColor = UIColor.gray
        return image1
    }()
    
    lazy var thirdview : UIView = {
        let thirdview = UIView()
        
        thirdview.backgroundColor = UIColor.white
        thirdview.layer.cornerRadius = 20 / 2
        thirdview.layer.shadowOpacity = 0.15
        thirdview.layer.shadowRadius = 1
        thirdview.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        thirdview.translatesAutoresizingMaskIntoConstraints = false

        
        return thirdview
    }()
    
    lazy var notification: UILabel = {
        let notification = UILabel()
        notification.text = "Notify when entering the region"
        notification.font = .systemFont(ofSize: 15)
        notification.translatesAutoresizingMaskIntoConstraints = false
        

        return notification
    }()
    
    
    lazy var notibutton : UISwitch = {
        let notibutton = UISwitch()
        notibutton.translatesAutoresizingMaskIntoConstraints = false
    
        
        return notibutton
        
    }()
    
    
    
    
    override func viewDidLoad() {
        
        view.backgroundColor = UIColor.white
        
        navigationItem.title = ""
        
        navigationItem.largeTitleDisplayMode = .never
        
        setupview()
        
    }
    
    func setupview() {
        view.addSubview(firstview)
        firstview.addSubview(listname)
        view.addSubview(secondview)
        secondview.addSubview(location)
        secondview.addSubview(image1)
        view.addSubview(thirdview)
        thirdview.addSubview(notification)
        thirdview.addSubview(notibutton)
        
        firstview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        firstview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        firstview.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
        firstview.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        listname.leadingAnchor.constraint(equalTo: firstview.leadingAnchor, constant: 10).isActive = true
        listname.trailingAnchor.constraint(equalTo: firstview.trailingAnchor, constant: -3).isActive = true
        listname.topAnchor.constraint(equalTo: firstview.topAnchor).isActive = true
        listname.bottomAnchor.constraint(equalTo: firstview.bottomAnchor).isActive = true
        
        secondview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        secondview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        secondview.topAnchor.constraint(equalTo: firstview.bottomAnchor, constant: 30).isActive = true
        secondview.heightAnchor.constraint(equalToConstant: 50).isActive = true

        location.leadingAnchor.constraint(equalTo: secondview.leadingAnchor, constant: 10).isActive = true
        location.trailingAnchor.constraint(equalTo: image1.leadingAnchor, constant: -5).isActive = true
        location.topAnchor.constraint(equalTo: secondview.topAnchor).isActive = true
        location.bottomAnchor.constraint(equalTo: secondview.bottomAnchor).isActive = true

        image1.centerYAnchor.constraint(equalTo: secondview.centerYAnchor).isActive = true
        image1.trailingAnchor.constraint(equalTo: secondview.trailingAnchor, constant: -20).isActive = true
        image1.widthAnchor.constraint(equalToConstant: 13).isActive = true
        image1.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        
        thirdview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        thirdview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        thirdview.topAnchor.constraint(equalTo: secondview.bottomAnchor, constant: 30).isActive = true
        thirdview.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        notification.leadingAnchor.constraint(equalTo: thirdview.leadingAnchor, constant: 10).isActive = true
        notification.trailingAnchor.constraint(equalTo: notibutton.leadingAnchor, constant: -5).isActive = true
        notification.topAnchor.constraint(equalTo: thirdview.topAnchor).isActive = true
        notification.bottomAnchor.constraint(equalTo: thirdview.bottomAnchor).isActive = true
        
        notibutton.centerYAnchor.constraint(equalTo: thirdview.centerYAnchor).isActive = true
        notibutton.trailingAnchor.constraint(equalTo: thirdview.trailingAnchor, constant: -20).isActive = true
        
        
        
        
        
        
        
    }
}
