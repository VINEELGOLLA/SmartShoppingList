//
//  ListItemEditViewController.swift
//  SmartShoppingList
//
//  Created by naga vineel golla on 7/8/20.
//  Copyright © 2020 naga vineel golla. All rights reserved.
//

import UIKit

class ListItemEditViewController: UIViewController{
    
    lazy var firstview : UIView = {
        let firstview = UIView()
        
        firstview.backgroundColor = UIColor.white
        firstview.layer.cornerRadius = 20 / 2
        firstview.layer.shadowOpacity = 0.15
        firstview.layer.shadowRadius = 1
        firstview.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        firstview.translatesAutoresizingMaskIntoConstraints = false

        return firstview
    }()
    
    lazy var listitemname: UITextField = {
        let listitemname = UITextField()
        listitemname.text = "ice cream"
        listitemname.textAlignment = .left
        listitemname.textColor = UIColor.black
        listitemname.translatesAutoresizingMaskIntoConstraints = false

        return listitemname
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
    
    lazy var fourthview : UIView = {
           let fourthview = UIView()
           
           fourthview.backgroundColor = UIColor.white
           fourthview.layer.cornerRadius = 20 / 2
           fourthview.layer.shadowOpacity = 0.15
           fourthview.layer.shadowRadius = 1
           fourthview.layer.shadowOffset = CGSize(width: 0, height: 0)
           
           fourthview.translatesAutoresizingMaskIntoConstraints = false

           
           return fourthview
       }()
    
    lazy var fifthview : UIView = {
        let fifthview = UIView()
        
        fifthview.backgroundColor = UIColor.white
        fifthview.layer.cornerRadius = 20 / 2
        fifthview.layer.shadowOpacity = 0.15
        fifthview.layer.shadowRadius = 1
        fifthview.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        fifthview.translatesAutoresizingMaskIntoConstraints = false

        
        return fifthview
    }()
    
    lazy var mark: UILabel = {
           let mark = UILabel()
           mark.text = "Mark as"
           mark.textAlignment = .left
           mark.textColor = UIColor.black
           mark.translatesAutoresizingMaskIntoConstraints = false

           return mark
       }()
    
    lazy var listnamechange: UILabel = {
        let listnamechange = UILabel()
        listnamechange.text = "LIST1"
        listnamechange.textAlignment = .left
        listnamechange.textColor = UIColor.black
        listnamechange.translatesAutoresizingMaskIntoConstraints = false

        return listnamechange
    }()
    
    lazy var image1 : UIImageView = {
        let image1 = UIImageView()
        image1.translatesAutoresizingMaskIntoConstraints = false
        image1.image = UIImage(systemName: "chevron.right")
        image1.tintColor = UIColor.gray
        return image1
    }()
    
    lazy var image2 : UIImageView = {
        let image2 = UIImageView()
        image2.translatesAutoresizingMaskIntoConstraints = false
        image2.image = UIImage(systemName: "chevron.right")
        image2.tintColor = UIColor.gray
        return image2
    }()
    
    
    lazy var stepper : UIStepper = {
        let stepper = UIStepper()
        stepper.backgroundColor = UIColor.clear
        stepper.minimumValue = 1
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.autorepeat = true

        return stepper
    }()
    
    lazy var notes: UILabel = {
           let notes = UILabel()
           notes.text = "Notes"
           notes.textAlignment = .left
           notes.textColor = UIColor.black
           notes.translatesAutoresizingMaskIntoConstraints = false

           return notes
       }()
    
    lazy var notestext: UITextView = {
        let notestext = UITextView()
        notestext.text = "ice cream"
        notestext.font = .systemFont(ofSize: 16)
        notestext.textAlignment = .natural
        notestext.textColor = UIColor.black
        notestext.translatesAutoresizingMaskIntoConstraints = false
        
        notestext.backgroundColor = UIColor.white
        notestext.layer.cornerRadius = 20 / 2
        notestext.layer.shadowOpacity = 0.15
        notestext.layer.shadowRadius = 1
        notestext.layer.shadowOffset = CGSize(width: 0, height: 0)

        return notestext
    }()
    
    lazy var listname: UILabel = {
        let listname = UILabel()
        listname.text = "List"
        listname.textAlignment = .left
        listname.textColor = UIColor.black
        listname.translatesAutoresizingMaskIntoConstraints = false

        return listname
    }()
    
    
    
    lazy var quantitytype: UILabel = {
        let quantitytype = UILabel()
        quantitytype.text = "Quantity Type"
        quantitytype.textAlignment = .left
        quantitytype.textColor = UIColor.black
        quantitytype.translatesAutoresizingMaskIntoConstraints = false

        return quantitytype
    }()
    
    lazy var quantityvalue: UILabel = {
           let quantityvalue = UILabel()
           quantityvalue.text = "1"
           quantityvalue.textAlignment = .center
           quantityvalue.textColor = UIColor.black
           quantityvalue.translatesAutoresizingMaskIntoConstraints = false

           return quantityvalue
       }()
    
    override func viewDidLoad() {
        
        view.backgroundColor = UIColor.white
        
        navigationItem.title = "Edit"
        
        navigationItem.largeTitleDisplayMode = .never
        
        setupview()
        
    }
    
    func setupview() {
        view.addSubview(firstview)
        fifthview.addSubview(listitemname)
        view.addSubview(secondview)
        view.addSubview(thirdview)
        secondview.addSubview(stepper)
        secondview.addSubview(quantitytype)
        secondview.addSubview(quantityvalue)
        thirdview.addSubview(mark)
        thirdview.addSubview(image1)
        view.addSubview(listname)
        view.addSubview(fourthview)
        fourthview.addSubview(listnamechange)
        fourthview.addSubview(image2)
        view.addSubview(notes)
        view.addSubview(fifthview)
        fifthview.addSubview(notestext)
        
        firstview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        firstview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        firstview.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
        firstview.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
        listitemname.leadingAnchor.constraint(equalTo: firstview.leadingAnchor, constant: 10).isActive = true
        listitemname.trailingAnchor.constraint(equalTo: firstview.trailingAnchor, constant: -3).isActive = true
        listitemname.topAnchor.constraint(equalTo: firstview.topAnchor).isActive = true
        listitemname.bottomAnchor.constraint(equalTo: firstview.bottomAnchor).isActive = true
        
        secondview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        secondview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        secondview.topAnchor.constraint(equalTo: firstview.bottomAnchor, constant: 30).isActive = true
        secondview.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        quantitytype.topAnchor.constraint(equalTo: secondview.topAnchor).isActive = true
        quantitytype.bottomAnchor.constraint(equalTo: secondview.bottomAnchor).isActive = true
        quantitytype.leadingAnchor.constraint(equalTo: secondview.leadingAnchor, constant: 10).isActive = true
        quantitytype.widthAnchor.constraint(equalToConstant: 130).isActive = true
        
        quantityvalue.topAnchor.constraint(equalTo: secondview.topAnchor).isActive = true
        quantityvalue.bottomAnchor.constraint(equalTo: secondview.bottomAnchor).isActive = true
        quantityvalue.trailingAnchor.constraint(equalTo: stepper.leadingAnchor, constant: -10).isActive = true
        quantityvalue.centerYAnchor.constraint(equalTo: secondview.centerYAnchor).isActive = true
        
        
        stepper.centerYAnchor.constraint(equalTo: secondview.centerYAnchor).isActive = true
        stepper.trailingAnchor.constraint(equalTo: secondview.trailingAnchor, constant: -5).isActive = true
        
        thirdview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        thirdview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        thirdview.topAnchor.constraint(equalTo: secondview.bottomAnchor, constant: 30).isActive = true
        thirdview.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        mark.topAnchor.constraint(equalTo: thirdview.topAnchor).isActive = true
        mark.bottomAnchor.constraint(equalTo: thirdview.bottomAnchor).isActive = true
        mark.leadingAnchor.constraint(equalTo: thirdview.leadingAnchor, constant: 10).isActive = true
        mark.centerYAnchor.constraint(equalTo: thirdview.centerYAnchor).isActive = true
        
        image1.centerYAnchor.constraint(equalTo: thirdview.centerYAnchor).isActive = true
        image1.trailingAnchor.constraint(equalTo: thirdview.trailingAnchor, constant: -20).isActive = true
        image1.widthAnchor.constraint(equalToConstant: 13).isActive = true
        image1.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        listname.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        listname.topAnchor.constraint(equalTo: thirdview.bottomAnchor, constant: 30).isActive = true
        listname.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        fourthview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        fourthview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        fourthview.topAnchor.constraint(equalTo: listname.bottomAnchor, constant: 2).isActive = true
        fourthview.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        listnamechange.topAnchor.constraint(equalTo: fourthview.topAnchor).isActive = true
        listnamechange.bottomAnchor.constraint(equalTo: fourthview.bottomAnchor).isActive = true
        listnamechange.leadingAnchor.constraint(equalTo: fourthview.leadingAnchor, constant: 10).isActive = true
        listnamechange.centerYAnchor.constraint(equalTo: fourthview.centerYAnchor).isActive = true
        
        image2.centerYAnchor.constraint(equalTo: fourthview.centerYAnchor).isActive = true
        image2.trailingAnchor.constraint(equalTo: fourthview.trailingAnchor, constant: -20).isActive = true
        image2.widthAnchor.constraint(equalToConstant: 13).isActive = true
        image2.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        notes.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        notes.topAnchor.constraint(equalTo: fourthview.bottomAnchor, constant: 30).isActive = true
        notes.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        fifthview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        fifthview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        fifthview.topAnchor.constraint(equalTo: notes.bottomAnchor, constant: 2).isActive = true
        fifthview.heightAnchor.constraint(equalToConstant: 130).isActive = true
        
        notestext.leadingAnchor.constraint(equalTo: fifthview.leadingAnchor, constant: 5).isActive = true
        notestext.trailingAnchor.constraint(equalTo: fifthview.trailingAnchor, constant: -5).isActive = true
        notestext.topAnchor.constraint(equalTo: fifthview.topAnchor).isActive = true
        notestext.bottomAnchor.constraint(equalTo: fifthview.bottomAnchor).isActive = true

        
    }
    
}
