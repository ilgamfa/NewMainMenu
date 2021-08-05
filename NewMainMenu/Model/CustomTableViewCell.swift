//
//  CustomTableViewCell.swift
//  NewMainMenu
//
//  Created by Ильгам Ахматдинов on 05.08.2021.
//

import Foundation
import UIKit

struct CustomTableData {
    var whichFranchise: String
    var whichFranchiseImage: UIImage
    var arrow : UIImage
}

final class CustomTableViewCell: UITableViewCell {
    var data: CustomTableData? {
        didSet {
            label.text = data?.whichFranchise
            leftImage.image = data?.whichFranchiseImage
            rightImage.image = data?.arrow
        }
    }
    
    private let label: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)

        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let leftImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let rightImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
   
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(label)
        contentView.addSubview(leftImage)
        contentView.addSubview(rightImage)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            leftImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 18),
            leftImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ])
        
        NSLayoutConstraint.activate([
            rightImage.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            rightImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ])
        
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: leftImage.trailingAnchor, constant: 10)
        ])
        
        
        
    }
    
}


