//
//  ViewController.swift
//  NewMainMenu
//
//  Created by Ильгам Ахматдинов on 28.07.2021.
//

import UIKit

class MainMenuViewController: UIViewController {

   private var topBarView: UIView = {
        var top = UIView()
        top.backgroundColor = .white
        return top
    }()
    
    private var searchBar: UISearchBar = {
        var bar = UISearchBar()
        bar.placeholder = "Поиск франшизы"
        bar.searchTextField.backgroundColor = .white
        bar.layer.borderWidth = 1
        bar.layer.borderColor = UIColor.white.cgColor
        
        
        return bar
    }()
    
    private var whiteTopSpace: UIView = {
        var space = UIView()
        space.backgroundColor = .white
        return space
    }()
    
    private var menuButton: UIButton = {
        var menu = UIButton()
        menu.setImage(UIImage(named: "menuItem"), for: .normal)
        return menu
    }()
    
    private var chooseCategoryLabel: UILabel = {
        var label = UILabel()
        label.text = "Выберете категорию"
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    private var categoryCollectionView: UICollectionView = {
        var collectionView = UICollectionView()
        return collectionView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "backgroungColor")
        
        addSubViews()
    }
    
    
    func addSubViews() {
        view.addSubview(whiteTopSpace)
        view.addSubview(topBarView)
        topBarView.addSubview(searchBar)
        topBarView.addSubview(menuButton)
        view.addSubview(chooseCategoryLabel)
    }
    
    
    override func viewDidLayoutSubviews() {
        whiteTopSpace.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            whiteTopSpace.topAnchor.constraint(equalTo: view.topAnchor),
            whiteTopSpace.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            whiteTopSpace.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            whiteTopSpace.bottomAnchor.constraint(equalTo: topBarView.topAnchor)
        ])
        
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
        
        chooseCategoryLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            chooseCategoryLabel.topAnchor.constraint(equalTo: topBarView.bottomAnchor, constant: 16),
            chooseCategoryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            chooseCategoryLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            chooseCategoryLabel.heightAnchor.constraint(equalToConstant: 22)
          
        ])
        
        
        
    }
}
