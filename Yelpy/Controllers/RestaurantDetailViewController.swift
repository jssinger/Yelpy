//
//  RestaurantDetailViewController.swift
//  Yelpy
//
//  Created by Jonathan Singer on 6/25/20.
//  Copyright © 2020 memo. All rights reserved.
//

import UIKit
import AlamofireImage

class RestaurantDetailViewController: UIViewController {


    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var restaurantImage: UIImageView!
    
    var r: Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        restaurantImage.af.setImage(withURL: r.imageURL!)
        nameLabel.text = r.name
        addressLabel.text = r.address
        // Do any additional setup after loading the view.
    }
    
    // –––––– TODO: Override segue to pass the restaurant object to the DetailsViewController 

}
