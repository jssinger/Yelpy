//
//  Restaurant.swift
//  Yelpy
//
//  Created by Jonathan Singer on 6/25/20.
//  Copyright © 2020 memo. All rights reserved.
//

import Foundation

class Restaurant{
    
    var imageURL: URL?
    var url: URL?
    var name: String
    var mainCategory: String
    var phone: String
    var rating: Double
    var reviews: Int
    var price: String
    var address: String
    
    init(dict: [String: Any]) {
        imageURL = URL(string: dict["image_url"] as! String)
        name = dict["name"] as! String
        rating = dict["rating"] as! Double
        reviews = dict["review_count"] as! Int
        phone = dict["display_phone"] as! String
        url = URL(string: dict["url"] as! String)
        price = dict["price"] as? String ?? ""
        let locations = dict["location"] as! Dictionary<String, Any>
        address = locations["address1"] as! String
        mainCategory = Restaurant.getMainCategory(dict: dict)
    }
    
    static func getMainCategory(dict: [String:Any]) -> String {
        let categories = dict["categories"] as! [[String:Any]]
        return categories[0]["title"] as! String
    }
}
