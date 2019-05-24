//
//  Player.swift
//  FlanelinhaParking
//
//  Created by Adriano Mendes Marinheiro on 23/05/19.
//  Copyright © 2019 Raul Brito. All rights reserved.
//

import Foundation
import Tailor
import CoreLocation

struct Player: Mappable {
    
    var id: Int!
    var name: String!
    var lastName: String!
    var initials: String!
    var icon: String!
    var clickCount: Int!
    //    var latlong: [String:Any]!
    //    var coordinates: [CLLocationCoordinate2D] {
    //        get {
    //            CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
    //            let centerX = origin.x + (size.width / 2)
    //            let centerY = origin.y + (size.height / 2)
    //            return Point(x: centerX, y: centerY)
    //        }
    //    }
    
    init(_ map: [String : Any]) {
        id <- map.property("id")
        name <- map.property("name")
        lastName <- map.property("lastName")
        initials <- map.property("initials")
        icon <- map.property("icon")
        clickCount <- map.property("clickCount")
        //        location <- map.property("location")
    }
}
