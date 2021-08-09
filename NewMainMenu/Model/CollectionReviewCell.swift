//
//  CollectionReviewCell.swift
//  NewMainMenu
//
//  Created by Ильгам Ахматдинов on 09.08.2021.
//

import Foundation
import UIKit

struct CustomReviewCollectionData {
    var reviewTitle: String
    var reviewDescr: String
    var authImage: UIImage
    var authFullName: String
    var authCity: String
    var franchiseImage: UIImage
    var titleFranchise: String
    var descriptionFranchise: String
    var costFranchise: String
}

final class CustomReviewCollectionCell: UICollectionViewCell {
    
    var data: CustomReviewCollectionData? {
        didSet {
            reviewTitle.text = data?.reviewTitle
            reviewDescr.text = data?.reviewDescr
            authImage.image = data?.authImage
            authFullName.text = data?.authFullName
            authCity.text = data?.authCity
            franchiseImage.image = data?.franchiseImage
            titleFranchise.text = data?.titleFranchise
            descriptionFranchise.text = data?.descriptionFranchise
            costFranchise.text = data?.costFranchise
        }
    }
    
    private let reviewTitle: UILabel = {
        let title = UILabel()
        title.font = UIFont.boldSystemFont(ofSize: 14)
        title.backgroundColor = .darkGray
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    private let reviewDescr: UILabel = {
        let title = UILabel()
        title.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        title.numberOfLines = 0
        title.backgroundColor = .lightGray
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    private let authorView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let authImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let authFullName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let authCity: UILabel = {
        let city = UILabel()
        city.translatesAutoresizingMaskIntoConstraints = false
        return city
    }()
    
    private let franchiseView: UIView = {
        let view = UIView()
        view.backgroundColor = .cyan
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let franchiseImage: UIImageView = {
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
        contentView.addSubview(reviewTitle)
        contentView.addSubview(reviewDescr)
        contentView.addSubview(authorView)
        contentView.addSubview(franchiseView)
        
        authorView.addSubview(authImage)
        authorView.addSubview(authFullName)
        authorView.addSubview(authCity)
        
        franchiseView.addSubview(franchiseImage)
        franchiseView.addSubview(titleFranchise)
        franchiseView.addSubview(descriptionFranchise)
        franchiseView.addSubview(costFranchise)
        
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            reviewTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            reviewTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            reviewTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            reviewTitle.heightAnchor.constraint(equalToConstant: 21),
        ])
        
        NSLayoutConstraint.activate([
            reviewDescr.topAnchor.constraint(equalTo: reviewTitle.bottomAnchor),
            reviewDescr.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            reviewDescr.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            reviewDescr.heightAnchor.constraint(equalToConstant: 63),
        ])
        
        NSLayoutConstraint.activate([
            authorView.topAnchor.constraint(equalTo: reviewDescr.bottomAnchor, constant: 8),
            authorView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            authorView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            authorView.heightAnchor.constraint(equalToConstant: 40),
        ])
        
        NSLayoutConstraint.activate([
            authImage.topAnchor.constraint(equalTo: authorView.topAnchor),
            authImage.leadingAnchor.constraint(equalTo: authorView.leadingAnchor),
            authImage.heightAnchor.constraint(equalTo: authorView.heightAnchor)
        ])
        
        NSLayoutConstraint.activate([
            authFullName.topAnchor.constraint(equalTo: authorView.topAnchor),
            authFullName.leadingAnchor.constraint(equalTo: authImage.trailingAnchor, constant: 12),
            authFullName.trailingAnchor.constraint(equalTo: authorView.trailingAnchor),
            authFullName.widthAnchor.constraint(equalToConstant: 22)
        ])
        
        NSLayoutConstraint.activate([
            authCity.topAnchor.constraint(equalTo: authFullName.bottomAnchor),
            authCity.leadingAnchor.constraint(equalTo: authImage.trailingAnchor, constant: 12),
            authCity.trailingAnchor.constraint(equalTo: authorView.trailingAnchor),
            authCity.widthAnchor.constraint(equalToConstant: 18)
        ])
        
        
        NSLayoutConstraint.activate([
            franchiseView.topAnchor.constraint(equalTo: authorView.bottomAnchor, constant: 33),
            franchiseView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            franchiseView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            franchiseView.heightAnchor.constraint(equalToConstant: 60),
        ])
        
        NSLayoutConstraint.activate([
            franchiseImage.topAnchor.constraint(equalTo: franchiseView.topAnchor),
            franchiseImage.leadingAnchor.constraint(equalTo: franchiseView.leadingAnchor),
//            franchiseImage.bottomAnchor.constraint(equalTo: franchiseView.bottomAnchor),
        ])
        
        NSLayoutConstraint.activate([
            titleFranchise.topAnchor.constraint(equalTo: franchiseView.topAnchor),
            titleFranchise.leadingAnchor.constraint(equalTo: franchiseImage.trailingAnchor, constant: 12),
            titleFranchise.trailingAnchor.constraint(equalTo: franchiseView.trailingAnchor),
            titleFranchise.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            descriptionFranchise.topAnchor.constraint(equalTo: titleFranchise.bottomAnchor),
            descriptionFranchise.leadingAnchor.constraint(equalTo: franchiseImage.trailingAnchor, constant: 12),
            descriptionFranchise.trailingAnchor.constraint(equalTo: franchiseView.trailingAnchor),
            descriptionFranchise.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            costFranchise.topAnchor.constraint(equalTo: descriptionFranchise.bottomAnchor),
            costFranchise.leadingAnchor.constraint(equalTo: franchiseImage.trailingAnchor, constant: 12),
            costFranchise.trailingAnchor.constraint(equalTo: franchiseView.trailingAnchor),
            costFranchise.heightAnchor.constraint(equalToConstant: 20)
        ])
        
    }
}
