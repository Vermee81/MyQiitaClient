//
//  ArticleListAPIClientProtocol.swift
//  QiitaClient
//
//  Created by Hiroo Kusaba on 2018/10/14.
//  Copyright © 2018年 Hiroo Kusaba. All rights reserved.
//

import Foundation

protocol ArticleListAPIClientProtocol{
    func fetch(completion: @escaping (([Article]?) -> Void))
}
