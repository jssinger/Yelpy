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
    @IBOutlet weak var priceLabel: UILabel!
    
    var r: Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let totalAddress = r.address + ", " + r.city + ", " + r.zip
        restaurantImage.af.setImage(withURL: r.imageURL!)
        nameLabel.text = r.name
        addressLabel.text = totalAddress
        priceLabel.text = r.price
        // Do any additional setup after loading the view.
    }
    
    // –––––– TODO: Override segue to pass the restaurant object to the DetailsViewController 

}
