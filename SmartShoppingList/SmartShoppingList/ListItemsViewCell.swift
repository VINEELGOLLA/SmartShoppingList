//
//  ListItemsViewCell.swift
//  SmartShoppingList
//
//  Created by naga vineel golla on 7/6/20.
//  Copyright © 2020 naga vineel golla. All rights reserved.
//

import UIKit

class ListItemsViewCell: UITableViewCell {
    static var identifier: String = "Cell"
    
    lazy var checkbox: UIButton = {
        let checkbox = UIButton()
        checkbox.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(systemName: "circle")

        checkbox.setImage(image, for: .normal)
        return checkbox
    }()
    
    lazy var itemtext : UILabel = {
        let itemtext = UILabel()
        itemtext.translatesAutoresizingMaskIntoConstraints = false
        itemtext.text = "ice cream"
        itemtext.textColor = UIColor.black
        itemtext.numberOfLines = 0
        //itemtext.adjustsFontSizeToFitWidth = true
        itemtext.textAlignment = .left
        itemtext.font = UIFont.boldSystemFont(ofSize:12)
        return itemtext
    }()
   
    
    let topstack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fill
        //stack.spacing = 2
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
          super.init(style: style, reuseIdentifier: reuseIdentifier)
          
          setupviews()
      }
    
    func setupviews() {
        addSubview(topstack)

        
        topstack.addArrangedSubview(checkbox)
        topstack.addArrangedSubview(itemtext)
        
        
        topstack.setCustomSpacing(0, after: checkbox)
        
        
        // topstack.
        topstack.topAnchor.constraint(equalTo: topAnchor).isActive = true
        topstack.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        topstack.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        topstack.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        checkbox.widthAnchor.constraint(equalToConstant: 60).isActive = true
        checkbox.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
