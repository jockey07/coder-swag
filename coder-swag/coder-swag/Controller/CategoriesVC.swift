//
//  ViewController.swift
//  coder-swag
//
//  Created by Jockey Wilson on 2019-09-16.
//  Copyright © 2019 Jockey Wilson. All rights reserved.
//

import UIKit

//when using tables and cells add data source and delagtes
//these have prebuilt stuuf that is aleady written
class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    //this is to creaate a link to the custom table on the VC
    @IBOutlet weak var categoryTable : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //already written for you, just add teh info required
    
    //how many cells do you need
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //this value is calculated by going in and calling the created arr
        //and then counting it
        return DataService.instance.getCategories().count
    }
    
    //what is in each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }


}

