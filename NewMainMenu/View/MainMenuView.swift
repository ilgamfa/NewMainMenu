//
//  MainMenuView.swift
//  NewMainMenu
//
//  Created by Ильгам Ахматдинов on 02.08.2021.
//

import Foundation
import UIKit

class MainMenuView: UIView {
    // MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        collectionCategoryView.dataSource = self
        collectionCategoryView.delegate = self
        
        collectionInvestView.dataSource = self
        collectionInvestView.delegate = self
        
        collectionSelectionView.dataSource = self
        collectionSelectionView.delegate = self
        
        tableView.delegate = self
        tableView.dataSource = self
        
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Images
    private let imageCollectionCategory = [
        CustomCollectionData(backgroundImage: UIImage(named: "imageAllCat")!),
        CustomCollectionData(backgroundImage: UIImage(named: "imageAutoCat")!),
        CustomCollectionData(backgroundImage: UIImage(named: "imageChildCat")!),
        CustomCollectionData(backgroundImage: UIImage(named: "imageInternetCat")!),
        CustomCollectionData(backgroundImage: UIImage(named: "imageEduCat")!),
        CustomCollectionData(backgroundImage: UIImage(named: "imageRecreationCat")!),
        CustomCollectionData(backgroundImage: UIImage(named: "imageFoodCat")!),
        CustomCollectionData(backgroundImage: UIImage(named: "imageFabricaCat")!),
        CustomCollectionData(backgroundImage: UIImage(named: "imageRetailCat")!),
        CustomCollectionData(backgroundImage: UIImage(named: "imageSportCat")!),
        CustomCollectionData(backgroundImage: UIImage(named: "imageDevelopCat")!),
        CustomCollectionData(backgroundImage: UIImage(named: "imageHomeCat")!),
        CustomCollectionData(backgroundImage: UIImage(named: "imageBusinessCat")!),
        CustomCollectionData(backgroundImage: UIImage(named: "imageCitizenCat")!),
        CustomCollectionData(backgroundImage: UIImage(named: "imageFinanceCat")!),
        CustomCollectionData(backgroundImage: UIImage(named: "imageMedicineCat")!),
    ]
    
    private let imageCollectionInvest = [
        CustomCollectionData(backgroundImage: UIImage(named: "invest1")!),
        CustomCollectionData(backgroundImage: UIImage(named: "invest2")!),
        CustomCollectionData(backgroundImage: UIImage(named: "invest3")!),
        CustomCollectionData(backgroundImage: UIImage(named: "invest4")!),
        CustomCollectionData(backgroundImage: UIImage(named: "invest5")!),
        CustomCollectionData(backgroundImage: UIImage(named: "invest6")!),
        CustomCollectionData(backgroundImage: UIImage(named: "invest7")!)
    ]
    
    private let whichFranchise = [
        CustomTableData(whichFranchise: "Новые франшизы", whichFranchiseImage: UIImage(named: "newFr")!, arrow: UIImage(named: "arrowFr")!),
        CustomTableData(whichFranchise: "Франшизы со скидкой", whichFranchiseImage: UIImage(named: "saleFr")!, arrow: UIImage(named: "arrowFr")!),
        CustomTableData(whichFranchise: "Недорогие франшизы", whichFranchiseImage: UIImage(named: "cheapFr")!, arrow: UIImage(named: "arrowFr")!),
        CustomTableData(whichFranchise: "Отзывы о франшизах", whichFranchiseImage: UIImage(named: "reviewFr")!, arrow: UIImage(named: "arrowFr")!)
    ]
    private let selectionFranchise = [
        CustomSelectionData(mainImage: UIImage(named: "exampleMainImage")!, favoriteMarkImage: UIImage(named: "exampleFavoriteMark")!, franchiseImage: UIImage(named: "exampleImageFranchise")!, titleFranchise: "Pedant.ru", descriptionFranchise: "Сервисные центры", costFranchise: "490 000 - 990 000 ₽"),
        CustomSelectionData(mainImage: UIImage(named: "exampleMainImage")!, favoriteMarkImage: UIImage(named: "exampleFavoriteMark")!, franchiseImage: UIImage(named: "exampleImageFranchise")!, titleFranchise: "Pedant.ru", descriptionFranchise: "Сервисные центры", costFranchise: "490 000 - 990 000 ₽"),
        CustomSelectionData(mainImage: UIImage(named: "exampleMainImage")!, favoriteMarkImage: UIImage(named: "exampleFavoriteMark")!, franchiseImage: UIImage(named: "exampleImageFranchise")!, titleFranchise: "Pedant.ru", descriptionFranchise: "Сервисные центры", costFranchise: "490 000 - 990 000 ₽"),
        CustomSelectionData(mainImage: UIImage(named: "exampleMainImage")!, favoriteMarkImage: UIImage(named: "exampleFavoriteMark")!, franchiseImage: UIImage(named: "exampleImageFranchise")!, titleFranchise: "Pedant.ru", descriptionFranchise: "Сервисные центры", costFranchise: "490 000 - 990 000 ₽"),
        CustomSelectionData(mainImage: UIImage(named: "exampleMainImage")!, favoriteMarkImage: UIImage(named: "exampleFavoriteMark")!, franchiseImage: UIImage(named: "exampleImageFranchise")!, titleFranchise: "Pedant.ru", descriptionFranchise: "Сервисные центры", costFranchise: "490 000 - 990 000 ₽"),
        CustomSelectionData(mainImage: UIImage(named: "exampleMainImage")!, favoriteMarkImage: UIImage(named: "exampleFavoriteMark")!, franchiseImage: UIImage(named: "exampleImageFranchise")!, titleFranchise: "Pedant.ru", descriptionFranchise: "Сервисные центры", costFranchise: "490 000 - 990 000 ₽"),
        CustomSelectionData(mainImage: UIImage(named: "exampleMainImage")!, favoriteMarkImage: UIImage(named: "exampleFavoriteMark")!, franchiseImage: UIImage(named: "exampleImageFranchise")!, titleFranchise: "Pedant.ru", descriptionFranchise: "Сервисные центры", costFranchise: "490 000 - 990 000 ₽"),
        CustomSelectionData(mainImage: UIImage(named: "exampleMainImage")!, favoriteMarkImage: UIImage(named: "exampleFavoriteMark")!, franchiseImage: UIImage(named: "exampleImageFranchise")!, titleFranchise: "Pedant.ru", descriptionFranchise: "Сервисные центры", costFranchise: "490 000 - 990 000 ₽"),
        CustomSelectionData(mainImage: UIImage(named: "exampleMainImage")!, favoriteMarkImage: UIImage(named: "exampleFavoriteMark")!, franchiseImage: UIImage(named: "exampleImageFranchise")!, titleFranchise: "Pedant.ru", descriptionFranchise: "Сервисные центры", costFranchise: "490 000 - 990 000 ₽"),
        CustomSelectionData(mainImage: UIImage(named: "exampleMainImage")!, favoriteMarkImage: UIImage(named: "exampleFavoriteMark")!, franchiseImage: UIImage(named: "exampleImageFranchise")!, titleFranchise: "Pedant.ru", descriptionFranchise: "Сервисные центры", costFranchise: "490 000 - 990 000 ₽"),
        
    ]
    
    
    // MARK: Sub Views
    
    private let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.alwaysBounceVertical = true
        scroll.alwaysBounceHorizontal = false
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
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
    
    private let menuButton: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(named: "menuList"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let chooseCategoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Выберите категорию"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let selfInvestmentLabel: UILabel = {
        let label = UILabel()
        label.text = "Или свои инвестиции"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let collectionCategoryView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 17, right: 0)
        layout.itemSize = CGSize(width: 80, height: 122)
        layout.minimumLineSpacing = 12
        layout.scrollDirection = .horizontal
        
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.register(CustomCollectionCell.self, forCellWithReuseIdentifier: "CollectionCategoryCell")
        view.backgroundColor = UIColor(named: "backgroungColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let collectionInvestView: UICollectionView = {

        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: 109, height: 49)
        layout.minimumLineSpacing = 8
        layout.scrollDirection = .horizontal

        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.register(CustomCollectionCell.self, forCellWithReuseIdentifier: "CollectionInvestCell")
        view.backgroundColor = UIColor(named: "backgroungColor")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let tableView: UITableView = {
        let tv = UITableView()
        tv.backgroundColor = UIColor(named: "backgroungColor")
        tv.register(CustomTableViewCell.self, forCellReuseIdentifier: "whichFranchiseCell")
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.isScrollEnabled = false
        return tv
    }()
    
    private let selectionFranchisesLabel: UILabel = {
        let label = UILabel()
        label.text = "Подборка франшиз"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let collectionSelectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: 156, height: 174)
        layout.minimumLineSpacing = 8
        
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.register(CustomCollectionSelectionCell.self, forCellWithReuseIdentifier: "CollectionSelectionCell")
        view.backgroundColor = UIColor(named: "backgroungColor")
//        view.backgroundColor = .darkGray
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isScrollEnabled = false
        return view
    }()
    
    private let reviewFranchisesLabel: UILabel = {
        let label = UILabel()
        label.text = "Отзывы о франшизах"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    
   // MARK: Setup Views
    
    private func setupViews() {
        self.addSubview(mainView)
        mainView.addSubview(whiteTopSpace)
        mainView.addSubview(topBarView)
        mainView.addSubview(scrollView)
        
        topBarView.addSubview(searchBar)
        topBarView.addSubview(menuButton)
        
        scrollView.addSubview(chooseCategoryLabel)
        scrollView.addSubview(collectionCategoryView)
        scrollView.addSubview(selfInvestmentLabel)
        scrollView.addSubview(collectionInvestView)
        scrollView.addSubview(tableView)
        scrollView.addSubview(selectionFranchisesLabel)
        scrollView.addSubview(collectionSelectionView)
        scrollView.addSubview(reviewFranchisesLabel)
        
    }
    
    // MARK: Auto Layout Constraints
    
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
            menuButton.centerYAnchor.constraint(equalTo: searchBar.centerYAnchor),
            menuButton.leadingAnchor.constraint(equalTo: topBarView.leadingAnchor, constant: 19),
            menuButton.heightAnchor.constraint(equalToConstant: 14),
            menuButton.widthAnchor.constraint(equalToConstant: 18),
        ])
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: topBarView.topAnchor),
            searchBar.bottomAnchor.constraint(equalTo: topBarView.bottomAnchor),
            searchBar.leadingAnchor.constraint(equalTo: menuButton.trailingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: topBarView.trailingAnchor),
        ])
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: topBarView.bottomAnchor),
            scrollView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            chooseCategoryLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 16),
            chooseCategoryLabel.heightAnchor.constraint(equalToConstant: 22),
            chooseCategoryLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 16),
            chooseCategoryLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            collectionCategoryView.topAnchor.constraint(equalTo: chooseCategoryLabel.bottomAnchor, constant: 8),
            collectionCategoryView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            collectionCategoryView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor),
            collectionCategoryView.heightAnchor.constraint(equalToConstant: 139)
        ])
        NSLayoutConstraint.activate([
            selfInvestmentLabel.topAnchor.constraint(equalTo: collectionCategoryView.bottomAnchor, constant: 16.5),
            selfInvestmentLabel.heightAnchor.constraint(equalToConstant: 22),
            selfInvestmentLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 16),
            selfInvestmentLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            collectionInvestView.topAnchor.constraint(equalTo: selfInvestmentLabel.bottomAnchor, constant: 8),
            collectionInvestView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            collectionInvestView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor),
            collectionInvestView.heightAnchor.constraint(equalToConstant: 47)
        ])

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: collectionInvestView.bottomAnchor, constant: 16),
            tableView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 18),
            tableView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -16),
            tableView.heightAnchor.constraint(equalToConstant: 196)
        ])
        
        NSLayoutConstraint.activate([
            selectionFranchisesLabel.topAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 10),
            selectionFranchisesLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 16),
            selectionFranchisesLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -16),
            selectionFranchisesLabel.heightAnchor.constraint(equalToConstant: 22)
        ])
        
        NSLayoutConstraint.activate([
            collectionSelectionView.topAnchor.constraint(equalTo: selectionFranchisesLabel.bottomAnchor, constant: 16),
            collectionSelectionView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 16),
            collectionSelectionView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -16),
            collectionSelectionView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            collectionSelectionView.heightAnchor.constraint(equalToConstant: 934)
        ])
        
        NSLayoutConstraint.activate([
            reviewFranchisesLabel.topAnchor.constraint(equalTo: collectionSelectionView.bottomAnchor, constant: 10),
            reviewFranchisesLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 16),
            reviewFranchisesLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -16),
            reviewFranchisesLabel.heightAnchor.constraint(equalToConstant: 22),
            reviewFranchisesLabel.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
            
        ])
    }
    
}
// MARK: EXTENSION for Collection View

extension MainMenuView: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == collectionCategoryView {
            let collectionCategoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCategoryCell", for: indexPath) as! CustomCollectionCell
            collectionCategoryCell.data = self.imageCollectionCategory[indexPath.item]
            return collectionCategoryCell
        }
        else if collectionView == collectionInvestView{
            let collectionInvestCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionInvestCell", for: indexPath) as! CustomCollectionCell
            collectionInvestCell.data = self.imageCollectionInvest[indexPath.item]
            return collectionInvestCell
        }
        else {
            let collectionSelectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionSelectionCell", for: indexPath) as! CustomCollectionSelectionCell
            collectionSelectionCell.data = selectionFranchise[indexPath.item]
            return collectionSelectionCell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == collectionCategoryView) {
            return imageCollectionCategory.count
        }
        else if (collectionView == collectionInvestView) {
            return imageCollectionInvest.count
        }
        else if (collectionView == collectionSelectionView) {
            return selectionFranchise.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var cellWidth: CGFloat
        var cellHeight: CGFloat

        if indexPath.item >= 0 && indexPath.item <= 2 && collectionView == collectionInvestView {
            cellWidth = 101
            cellHeight = 47
        }
        else if indexPath.item >= 3 && indexPath.item <= 5 && collectionView == collectionInvestView {
            cellWidth = 112
            cellHeight = 47
        }
        else if indexPath.item == 6  && collectionView == collectionInvestView {
            cellWidth = 155
            cellHeight = 47
        }
        
        else if collectionView == collectionSelectionView {
            cellWidth = 156
            cellHeight = 174
        }
        
        else {
            cellWidth = 80
            cellHeight = 122
        }
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == collectionCategoryView {
            print("tapped on item '\(indexPath.row + 1 )' in Category collection")
        }
        else {
            print("tapped on item '\(indexPath.row + 1 )' in Invest collection")
        }
    }
}

// MARK: EXTENSION for Table View

extension MainMenuView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return whichFranchise.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "whichFranchiseCell", for: indexPath) as! CustomTableViewCell
        let currentItem = whichFranchise[indexPath.item]
        cell.data = currentItem
        cell.backgroundColor = UIColor(named: "backgroungColor")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
