//
//  CustomTableViewCell.swift
//  NewMainMenu
//
//  Created by Ильгам Ахматдинов on 05.08.2021.
//

import Foundation
import UIKit

struct WhichFranchiseData {
    var whichFranchiseName: String
    var whichFranchiseImage: UIImage
    var arrowImage : UIImage
}

final class WhichFranchiseViewCell: UITableViewCell {
    var data: WhichFranchiseData? {
        didSet {
            label.text = data?.whichFranchiseName
            leftImage.image = data?.whichFranchiseImage
            rightImage.image = data?.arrowImage
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
            leftImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
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


