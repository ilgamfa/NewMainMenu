//
//  ViewController.swift
//  NewMainMenu
//
//  Created by Ильгам Ахматдинов on 28.07.2021.
//

import UIKit

class MainMenuViewController: UIViewController {

    var topBarView: UIView = {
        var top = UIView()
        top.backgroundColor = .white
        return top
    }()
    
    var searchBar: UISearchBar = {
        var bar = UISearchBar()
        bar.placeholder = "Поиск франшизы"
        bar.layer.borderWidth = 1
        bar.layer.borderColor = UIColor.white.cgColor
        
        
        return bar
    }()
    
    var menuButton: UIButton = {
        var menu = UIButton()
        menu.setImage(UIImage(named: "menuItem"), for: .normal)
        return menu
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "backgroungColor")
        
        addSubViews()
    }
    
    
    func addSubViews() {
        view.addSubview(topBarView)
        topBarView.addSubview(searchBar)
        topBarView.addSubview(menuButton)
    }
    
    
    override func viewDidLayoutSubviews() {
        
        topBarView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topBarView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            topBarView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            topBarView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            topBarView.heightAnchor.constraint(equalToConstant: 56)
        ])
        
        
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: topBarView.topAnchor),
            searchBar.leadingAnchor.constraint(equalTo: menuButton.trailingAnchor, constant: 8),
            searchBar.trailingAnchor.constraint(equalTo: topBarView.trailingAnchor),
            searchBar.bottomAnchor.constraint(equalTo: topBarView.bottomAnchor)
        ])
        
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            menuButton.topAnchor.constraint(equalTo: topBarView.topAnchor),
            menuButton.leadingAnchor.constraint(equalTo: topBarView.leadingAnchor, constant: 19),
            menuButton.widthAnchor.constraint(equalToConstant: 18),
            menuButton.heightAnchor.constraint(equalToConstant: 14),
            menuButton.bottomAnchor.constraint(equalTo: topBarView.bottomAnchor)
        ])
        
        
    }
}
