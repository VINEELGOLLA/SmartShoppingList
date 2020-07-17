//
//  ListItemsViewController.swift
//  SmartShoppingList
//
//  Created by naga vineel golla on 7/6/20.
//  Copyright © 2020 naga vineel golla. All rights reserved.
//

import UIKit

class ListItemsViewController: UIViewController {
    
    var tableView = UITableView()
    var safeArea: UILayoutGuide!
    
    lazy var fab: UIButton = {
        let fab = UIButton()
        fab.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(systemName: "plus")
        fab.backgroundColor = UIColor.systemBlue
        fab.tintColor = UIColor.white

        fab.setImage(image, for: .normal)
        return fab
    }()


    
    override func viewDidLoad() {
        
        safeArea = view.layoutMarginsGuide

        
        setuptableview()
        
        setupbutton()
        
        navigationController?.setToolbarHidden(false, animated: false)


        var items = [UIBarButtonItem]()
        
        let image = UIImage(systemName: "line.horizontal.3")
        
        let imagecheck = UIImage(systemName: "rectangle.badge.checkmark")
        
        //let imagelol = UIImage(systemName: "plus.circle.fill")
        
        


        
        
        
        items.append( UIBarButtonItem(image: imagecheck, style: .plain, target: self, action: #selector(options1) ))
        items.append(UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil))

        //items.append(UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: nil))
        
        //items.append( UIBarButtonItem(image: imagelol, style: .plain, target: self, action: #selector(addnew)))

        
        //items.append(UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil))

        //items.append( UIBarButtonItem(title: "more", style: .plain, target: self, action: #selector(options)) )
        
        //items.append(UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(options)))
        
        items.append(UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(options2)))
        


        self.toolbarItems = items

        

        
        
        view.backgroundColor = UIColor.white
        
        navigationItem.title = "List1"
        
        navigationItem.largeTitleDisplayMode = .always
        
        var items2 = [UIBarButtonItem]()
        
        
        items2.append(UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(navigate)))
        
        items2.append(UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(addTapped)))
        
        
        
        
        navigationItem.rightBarButtonItems = items2
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Items"
        self.navigationItem.searchController = searchController
        self.definesPresentationContext = true
        
    }
    
    @objc func navigate()  {
        let lol2 = ListItemEditViewController()
               
        navigationController?.pushViewController(lol2, animated: true)
    }
    
    func setupbutton() {
        
        view.addSubview(fab)
        
        fab.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-20).isActive = true
        fab.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -110).isActive = true
        fab.widthAnchor.constraint(equalToConstant: 50).isActive = true
        fab.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        fab.backgroundColor = UIColor.systemBlue
        fab.layer.cornerRadius = 50 / 2
        fab.layer.shadowOpacity = 0.25
        fab.layer.shadowRadius = 5
        fab.layer.shadowOffset = CGSize(width: 0, height: 10)
        
        fab.addTarget(self, action: #selector(addnew), for: .touchUpInside)
        

        
        
    }
    
    @objc func addnew() {
            let textalertview = UIAlertController(title: "Add a new Item", message: nil, preferredStyle: .alert)
            textalertview.addTextField(configurationHandler: nil)
            textalertview.textFields![0].placeholder = ""
            textalertview.addAction(UIAlertAction(title: "Add", style: .default, handler: { (_) in
                print(textalertview.textFields![0].text!)
            }))
            textalertview.addAction(UIAlertAction(title: "Add & create New", style: .default, handler: { (_) in
                print(textalertview.textFields![0].text!)
            }))
            textalertview.addAction(UIAlertAction(title: "cancel", style: .default, handler: { (_) in
                print(textalertview.textFields![0].text!)
            }))
    
            self.present(textalertview, animated: true, completion: nil)
        
    }
    

    
    @objc func options1() {
        // 1
        let optionMenu = UIAlertController(title: "Manage Items", message: nil, preferredStyle: .actionSheet)
            
        // 2
        let checkall = UIAlertAction(title: "check all", style: .default)
        
        //checkall.setValue(UIImage(systemName: "largecircle.fill.circle"), forKey: "image")
        
        //checkall.setValue(CATextLayerAlignmentMode.left, forKey: "titleTextAlignment")

        

        let uncheckall = UIAlertAction(title: "uncheck all", style: .default)
        
        //uncheckall.setValue(UIImage(systemName: "circle"), forKey: "image")
        
        //uncheckall.setValue(CATextLayerAlignmentMode.left, forKey: "titleTextAlignment")

        
            
        // 3
        let deleteuncheckedlist = UIAlertAction(title: "Delete all checked", style: .default)

        //clearlist.setValue(UIImage(systemName: "clear.fill"), forKey: "image")
        
        //clearlist.setValue(CATextLayerAlignmentMode.left, forKey: "titleTextAlignment")
        
        let deleteall = UIAlertAction(title: "Delete List", style: .default)



        
        
        let cancelaction = UIAlertAction(title: "cancel", style: .cancel)
            
        // 4
        optionMenu.addAction(checkall)
        optionMenu.addAction(uncheckall)
        optionMenu.addAction(deleteuncheckedlist)
        optionMenu.addAction(deleteall)
        optionMenu.addAction(cancelaction)

            
        // 5
        self.present(optionMenu, animated: true, completion: nil)
    }
    
    @objc func options2() {
        // 1
        let optionMenu = UIAlertController(title: "Sort Items", message: nil, preferredStyle: .actionSheet)
            
        // 2
        let alpha = UIAlertAction(title: "Alphabetically", style: .default)
        
        //checkall.setValue(UIImage(systemName: "largecircle.fill.circle"), forKey: "image")
        
        //checkall.setValue(CATextLayerAlignmentMode.left, forKey: "titleTextAlignment")

        

        let alphain = UIAlertAction(title: "Alphabetically inverse", style: .default)
        
        //uncheckall.setValue(UIImage(systemName: "circle"), forKey: "image")
        
        //uncheckall.setValue(CATextLayerAlignmentMode.left, forKey: "titleTextAlignment")

        
            
        // 3
        let date = UIAlertAction(title: "By date created", style: .default)

        //clearlist.setValue(UIImage(systemName: "clear.fill"), forKey: "image")
        
        //clearlist.setValue(CATextLayerAlignmentMode.left, forKey: "titleTextAlignment")
        
        let dateinv = UIAlertAction(title: "By date created inverse", style: .default)
        
        
        let man = UIAlertAction(title: "Manually", style: .default)

        



        
        
        let cancelaction = UIAlertAction(title: "cancel", style: .cancel)
            
        // 4
        optionMenu.addAction(alpha)
        optionMenu.addAction(alphain)
        optionMenu.addAction(date)
        optionMenu.addAction(dateinv)
        optionMenu.addAction(man)
        optionMenu.addAction(cancelaction)

            
        // 5
        self.present(optionMenu, animated: true, completion: nil)
    }
    
    func setuptableview() {
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
        tableView.frame = self.view.frame
        tableView.backgroundColor = UIColor.white
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = UIColor.clear
        self.view.addSubview(tableView)
           
        tableView.register(ListItemsViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.separatorColor = UIColor.gray
    }
    
    @objc func addTapped() {
        
        let lol2 = MapViewController()
                      
        //navigationController?.pushViewController(lol2, animated: true)
        present(lol2, animated: true, completion: nil)


    }
}

extension ListItemsViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ListItemsViewCell
        //cell.accessoryType = .detailButton
        //cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 50
        
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let change = UIContextualAction(style: .normal, title: "check"){ (action, view, nil) in
            print("change")
        }
        change.backgroundColor = UIColor.systemYellow
        
        return UISwipeActionsConfiguration(actions: [change])
    }
    
    
}
