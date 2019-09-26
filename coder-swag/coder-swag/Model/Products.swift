//
//  Products.swift
//  coder-swag
//
//  Created by Jockey Wilson on 2019-09-26.
//  Copyright © 2019 Jockey Wilson. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    } 
}
