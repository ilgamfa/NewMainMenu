//
//  ViewController.swift
//  NewMainMenu
//
//  Created by Ильгам Ахматдинов on 28.07.2021.
//

import UIKit

class MainMenuViewController: UIViewController {

    var searchBar: UISearchBar = {
        var bar = UISearchBar()
        bar.placeholder = "поиск"
        return bar
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        view.addSubview(searchBar)
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidLayoutSubviews() {
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            searchBar.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            searchBar.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
    }


}

