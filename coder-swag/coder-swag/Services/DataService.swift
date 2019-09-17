//
//  DataService.swift
//  coder-swag
//
//  Created by Jockey Wilson on 2019-09-17.
//  Copyright © 2019 Jockey Wilson. All rights reserved.
//

import Foundation

//this will be used to hold our data for the app
class DataService {
    //static used so only one copy of the data for this app
    //called a singleton
    static let instance = DataService()
    
    //create an array as we are not using a database
    //this will hold the category names and pictues of main groups
    //of items we are seeling
    private let categories = [
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    //when this function is called from another part of the program
    //it will return an array of type category that was just created above
    //this will then be passed to the cells , table veiw
    func getCategories() -> [Category] {
        return categories
    }
}
