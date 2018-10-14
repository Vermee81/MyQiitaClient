//
//  ArticleListViewControllerTests.swift
//  QiitaClientTests
//
//  Created by Hiroo Kusaba on 2018/10/14.
//  Copyright © 2018年 Hiroo Kusaba. All rights reserved.
//

import XCTest

@testable import QiitaClient

class ArticleListViewControllerTests: XCTestCase{
    
    func test_タイトルが表示されていること(){
        let vc = ArticleListViewController()
        let window = UIWindow()
        window.rootViewController = vc
        window.makeKeyAndVisible()
        
        XCTAssertEqual(vc.titleLabel.text, "記事タイトル")
    }
}
