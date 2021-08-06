//
//  PopularCategoryCell.swift
//  NewMainMenu
//
//  Created by Ильгам Ахматдинов on 06.08.2021.


import Foundation
import UIKit

struct PopularCategoryData {
    var popularCategoryName: String
    var counter: String
    var arrow : UIImage
}

final class PopularCategotyViewCell: UITableViewCell {
    var data: PopularCategoryData? {
        didSet {
            label.text = data?.popularCategoryName
            counter.text = data?.counter
            rightImage.image = data?.arrow
        }
    }
    
    private let label: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)

        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let counter: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
    return label
    }()
    
    private let rightImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
   
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(label)
        contentView.addSubview(counter)
        contentView.addSubview(rightImage)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ])
        
        NSLayoutConstraint.activate([
            rightImage.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            rightImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ])
        
        NSLayoutConstraint.activate([
            counter.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            counter.trailingAnchor.constraint(equalTo: rightImage.leadingAnchor, constant: -17)
        ])
        
        
        
    }
    
}


