//
//  ViewController.swift
//  SmartShoppingList
//
//  Created by naga vineel golla on 7/4/20.
//  Copyright © 2020 naga vineel golla. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
        
    var viewmodel : MainViewModel!
    
    var tableView = UITableView()
    var safeArea: UILayoutGuide!

    
    private var list = [Shoplist]()

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        print("viewWillAppear")
   
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        
        viewmodel = MainViewModel()
        viewmodel.delegate = self
        viewmodel.fetchallrecords()
           

        // Do any additional setup after loading the view.
        
        safeArea = view.layoutMarginsGuide
        
        setuptableview()
        
        setupnavigaionitems()
        
        view.backgroundColor = UIColor.white

        
    }
    
    func setupnavigaionitems() {
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
        navigationItem.title = "ShoppingList"
        
        //navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search lists"
        self.navigationItem.searchController = searchController
        self.definesPresentationContext = true
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
        
        tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.separatorColor = UIColor.gray
    }
    
    @objc func addTapped() {
        
        let textalertview = UIAlertController(title: "Create a new list", message: nil, preferredStyle: .alert)
        textalertview.addTextField(configurationHandler: nil)
        textalertview.textFields![0].placeholder = "new list"
        textalertview.addAction(UIAlertAction(title: "Done", style: .default, handler: { (_) in
        print("lol \(textalertview.textFields![0].text!)")
        let newlist = textalertview.textFields![0].text!
            
        if(newlist.isEmpty){
            return
        }
        else
        {
            self.viewmodel.addlist(list: newlist)
        }
        }))

        self.present(textalertview, animated: true, completion: nil)
    }
}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! HomeTableViewCell
        cell.listname.text = list[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            
            self.viewmodel.deletelist(id: list[indexPath.row].id!)

            list.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        
        let listitems = ListItemsViewController()
        navigationController?.pushViewController(listitems, animated: true)
        
        

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
}

extension ViewController: MainViewModelDelegate {
    func fetchandreload(list: [Shoplist]) {
        self.dismiss(animated: true) {
            
            self.list.removeAll()
            self.list.append(contentsOf: list)
            self.tableView.reloadData()
            
        }
    }
    
    func fetchalldata(list: [Shoplist]) {
        self.dismiss(animated: true) {
            self.list.append(contentsOf: list)
            self.tableView.reloadData()
        }
    }
    
    
}


extension Date {
    /**
     Formats a Date

     - parameters format: (String) for eg dd-MM-yyyy hh-mm-ss
     */
    func format(format:String = "dd-MM-yyyy hh-mm-ss") -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        let dateString = dateFormatter.string(from: self)
        if let newDate = dateFormatter.date(from: dateString) {
            return newDate
        } else {
            return self
        }
    }
}
