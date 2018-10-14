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
        let article = Article(title:"記事タイトル")
        let client = FakeArticleListAPIClient(fakeResponse: [article])
        let vc = ArticleListViewController(client: client)
        
        let window = UIWindow()
        window.rootViewController = vc
        window.makeKeyAndVisible()
        
        XCTAssertEqual(vc.titleLabel.text, "記事タイトル")
    }
    
    func test_タイトル2が表示されていること(){
        let article = Article(title: "記事タイトル2")
        let client = FakeArticleListAPIClient(fakeResponse: [article])
        let vc = ArticleListViewController(client: client)
        
        let window = UIWindow()
        window.rootViewController = vc
        window.makeKeyAndVisible()
        
        XCTAssertEqual(vc.titleLabel.text, "記事タイトル2")
    }
}

class FakeArticleListAPIClient: ArticleListAPIClientProtocol{
    let fakeResponse: [Article]
    
    init(fakeResponse: [Article]){
        self.fakeResponse = fakeResponse
    }
    
    func fetch(completion: @escaping(([Article]?) -> Void)){
        completion(fakeResponse)
    }
    
}
