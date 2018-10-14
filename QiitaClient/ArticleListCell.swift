//
//  ArticleListCell.swift
//  QiitaClient
//
//  Created by Hiroo Kusaba on 2018/10/14.
//  Copyright © 2018年 Hiroo Kusaba. All rights reserved.
//

import UIKit

class ArticleListCell: UITableViewCell{
    let titleLabel = UILabel()
    
    required init?(coder aDecoder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleLabel)
        titleLabel.leftAnchor.constraint(equalTo:contentView.leftAnchor, constant: 8.0).isActive = true
        titleLabel.topAnchor.constraint(equalTo:contentView.topAnchor, constant: 8.0).isActive = true
    }
    
    
    func configure(title: String){
        titleLabel.text = title
    }
}
