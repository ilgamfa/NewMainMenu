//
//  SelectionFranchiseCell.swift
//  NewMainMenu
//
//  Created by Ильгам Ахматдинов on 09.08.2021.
//

import Foundation
import UIKit

struct CustomSelectionData {
    var mainImage: UIImage
    var favoriteMarkImage: UIImage
//    var notFavoriteMarkImage: UIImage
    var franchiseImage: UIImage
    var titleFranchise: String
    var descriptionFranchise: String
    var costFranchise: String
}

final class CustomCollectionSelectionCell: UICollectionViewCell {
    var data: CustomSelectionData? {
        didSet {
            mainImage.image = data?.mainImage
            favoriteMarkImage.image = data?.favoriteMarkImage
            franchiseImage.image = data?.franchiseImage
            titleFranchise.text = data?.titleFranchise
            descriptionFranchise.text = data?.descriptionFranchise
            costFranchise.text = data?.costFranchise
        }
    }
    
    private let mainImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let franchiseImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let favoriteMarkImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let notFavoriteMarkImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let titleFranchise: UILabel = {
        let title = UILabel()
        title.font = UIFont.boldSystemFont(ofSize: 14)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    private let descriptionFranchise: UILabel = {
        let description = UILabel()
        description.textColor = .gray
        description.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        description.translatesAutoresizingMaskIntoConstraints = false
        return description
    }()
    
    private let costFranchise: UILabel = {
        let cost = UILabel()
        cost.textColor = .gray
        cost.font = UIFont.systemFont(ofSize: 14, weight: .regular)

        cost.translatesAutoresizingMaskIntoConstraints = false
        return cost
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        contentView.addSubview(mainImage)
        mainImage.addSubview(franchiseImage)
        mainImage.addSubview(favoriteMarkImage)
        contentView.addSubview(titleFranchise)
        contentView.addSubview(descriptionFranchise)
        contentView.addSubview(costFranchise)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            mainImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            mainImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            mainImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            mainImage.heightAnchor.constraint(equalToConstant: 98),
        ])
        
        NSLayoutConstraint.activate([
            franchiseImage.topAnchor.constraint(equalTo: mainImage.topAnchor, constant: 52),
            franchiseImage.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 4),
            franchiseImage.heightAnchor.constraint(equalToConstant: 74),
            franchiseImage.widthAnchor.constraint(equalToConstant: 92)
        ])
        
        NSLayoutConstraint.activate([
            favoriteMarkImage.topAnchor.constraint(equalTo: mainImage.topAnchor, constant: 8),
            favoriteMarkImage.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -8),
            favoriteMarkImage.heightAnchor.constraint(equalToConstant: 62),
            favoriteMarkImage.widthAnchor.constraint(equalToConstant: 62)
        ])
        
        NSLayoutConstraint.activate([
            titleFranchise.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 16),
            titleFranchise.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titleFranchise.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            titleFranchise.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            descriptionFranchise.topAnchor.constraint(equalTo: titleFranchise.bottomAnchor),
            descriptionFranchise.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            descriptionFranchise.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            descriptionFranchise.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            costFranchise.topAnchor.constraint(equalTo: descriptionFranchise.bottomAnchor),
            costFranchise.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            costFranchise.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            costFranchise.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        
    }
    
}
