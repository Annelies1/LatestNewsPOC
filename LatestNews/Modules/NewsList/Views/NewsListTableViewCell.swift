//
//  NewsListTableViewCell.swift
//  LatestNews
//
//  Created by avanees on 23/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

import UIKit
import SDWebImage

class NewsListTableViewCell: UITableViewCell {
    
    // MARK: - Private properties -
    
    private let newsImage = UIImageView()
    private let title = UILabel()
    private let placeholderImage = UIImage(named: "placeholderImage")
    
    // MARK: - Lifecycle -
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Update data -
    
    func update(with viewModel: NewsListTableViewCellPresentable) {
        newsImage.image = nil
        if let imageUrl = viewModel.imageUrl, let url = URL(string: imageUrl) {
            newsImage.sd_setImage(with: url)
        } else {
            newsImage.sd_imageIndicator = .none
            newsImage.image = placeholderImage
        }
        
        title.text = viewModel.title
    }
}

// MARK: - Setup UI -

extension NewsListTableViewCell: ConfigurableView {
    func configureSubviews() {
        newsImage.contentMode = .scaleAspectFit
        newsImage.sd_imageIndicator = SDWebImageActivityIndicator.gray
        contentView.addSubview(newsImage)
        
        title.numberOfLines = 0
        title.lineBreakMode = .byWordWrapping
        contentView.addSubview(title)
    }
    
    func configureLayout() {
        let marginGuide = contentView.layoutMarginsGuide
        
        newsImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            newsImage.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor),
            newsImage.centerYAnchor.constraint(equalTo: title.centerYAnchor),
            newsImage.widthAnchor.constraint(equalToConstant: 40),
            newsImage.heightAnchor.constraint(equalTo: newsImage.widthAnchor)
        ])
        
        title.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title.leadingAnchor.constraint(equalTo: newsImage.trailingAnchor, constant: 8),
            title.topAnchor.constraint(equalTo: marginGuide.topAnchor),
            title.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor),
            title.bottomAnchor.constraint(equalTo: marginGuide.bottomAnchor)
        ])
    }
}
