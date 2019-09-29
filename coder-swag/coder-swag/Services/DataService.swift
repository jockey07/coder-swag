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
    
    private let hats = [
        Product(title: "devslopes logo graphic beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes log hat black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes logo hat white", price: "$22", imageName: "hat03.png"),
        Product(title: "devslopes logo snapback", price: "20", imageName: "hat04.png")
    ]
    
    //product hoodies
    private let hoodies = [
        Product(title: "Devslopes logo hoodie grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes logo hoodie red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes hoodie grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes hoodie black", price: "$32", imageName: "hoodie04.png")
    ]
    
    //product shirts
    private let shirts = [
        Product(title: "Devslipes logo shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslipes basge shirt light grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslipes logo shirt red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle delegate grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip studios Black", price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    //when this function is called from another part of the program
    //it will return an array of type category that was just created above
    //this will then be passed to the cells , table veiw
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title:String
        ) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product]{
        return  hats
    }
    
    func getShirts() -> [Product] {
        return  shirts
    }
    
    func getHoodies() -> [Product] {
        return  hoodies
    }
    
    func getDigitalGoods() -> [Product] {
        return  digitalGoods
    }
}
