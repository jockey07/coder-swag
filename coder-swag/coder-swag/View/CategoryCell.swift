//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Jockey Wilson on 2019-09-16.
//  Copyright © 2019 Jockey Wilson. All rights reserved.
//

import UIKit

//this is to customize the prototype cell so it can be reused

class CategoryCell: UITableViewCell {
    
    //these outlets correspond to what is in the prototype cell
    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryTitle : UILabel!
    
    
    //this function sets the outelets above with what me created in the model
    func updateViews(category: Category)  {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    

}
