//
//  MainMenuView.swift
//  NewMainMenu
//
//  Created by Ильгам Ахматдинов on 02.08.2021.
//

import Foundation
import UIKit

class MainMenuView: UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let mainView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let whiteTopSpace: UIView = {
        let space = UIView()
        space.backgroundColor = .white
        space.translatesAutoresizingMaskIntoConstraints = false
        return space
    }()
    
    private let topBarView: UIView = {
        let top = UIView()
        top.backgroundColor = .white
        top.translatesAutoresizingMaskIntoConstraints = false
        return top
    }()
    
    private let searchBar: UISearchBar = {
        let bar = UISearchBar()
        bar.placeholder = "Поиск франшизы"
        bar.searchTextField.backgroundColor = .white
        bar.layer.borderWidth = 1
        bar.layer.borderColor = UIColor.white.cgColor
        bar.translatesAutoresizingMaskIntoConstraints = false
        return bar
    }()
    
    private let chooseCategoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Выберите категорию"
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
   
    private func setupViews() {
        self.addSubview(mainView)
        mainView.addSubview(whiteTopSpace)
        mainView.addSubview(topBarView)
        mainView.addSubview(chooseCategoryLabel)
        topBarView.addSubview(searchBar)
        
    }
    
    private func setupConstraints() {

        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: topAnchor),
            mainView.bottomAnchor.constraint(equalTo: bottomAnchor),
            mainView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])

        NSLayoutConstraint.activate([
            whiteTopSpace.topAnchor.constraint(equalTo: mainView.topAnchor),
            whiteTopSpace.bottomAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.topAnchor),
            whiteTopSpace.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            whiteTopSpace.trailingAnchor.constraint(equalTo: mainView.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            topBarView.topAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.topAnchor),
            topBarView.heightAnchor.constraint(equalToConstant: 56),
            topBarView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            topBarView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: topBarView.topAnchor),
            searchBar.bottomAnchor.constraint(equalTo: topBarView.bottomAnchor),
            searchBar.leadingAnchor.constraint(equalTo: topBarView.leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: topBarView.trailingAnchor),
        ])
        
        NSLayoutConstraint.activate([
            chooseCategoryLabel.topAnchor.constraint(equalTo: topBarView.bottomAnchor, constant: 16),
            chooseCategoryLabel.heightAnchor.constraint(equalToConstant: 22),
            chooseCategoryLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 16),
            chooseCategoryLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -16)
        ])
        
    }
    
}
