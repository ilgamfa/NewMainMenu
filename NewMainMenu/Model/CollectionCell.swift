//
//  CollectionViewCell.swift
//  NewMainMenu
//
//  Created by Ильгам Ахматдинов on 03.08.2021.
//

import Foundation
import UIKit

struct CustomCollectionData {
    var backgroundImage: UIImage
}

final class CustomCollectionCell: UICollectionViewCell {
    
    var data: CustomCollectionData? {
        didSet {
            guard let data = data else { return }
            imageView.image = data.backgroundImage
        }
    }
    
    private let imageView: UIImageView = {
       let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        contentView.addSubview(imageView)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
//            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
    
}


