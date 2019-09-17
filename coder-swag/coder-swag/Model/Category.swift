//
//  Category.swift
//  coder-swag
//
//  Created by Jockey Wilson on 2019-09-17.
//  Copyright © 2019 Jockey Wilson. All rights reserved.
//

import Foundation

//this is a resuseable data struct that can be used over an over again
//it references the outlets created for the resubale cell
//simlar can be used to get data from other sources such as databases

struct Category {
    //private for setting ie no one else can set
    //public for getting, anyone can get
    //these are the two items in the cell
    private(set) public var title : String
    private(set) public var imageName : String
    
    //initialize the variables
    //it says the self ie the vars abouve will be passed what is
    //the paramaters after the init
    init(title:String, imageName:String) {
        self.title = title
        self.imageName = imageName
    }
}
