//
//  Locations.swift
//  PROTOCOLOSHASTAQLLORE
//
//  Created by Joaquin Martinez on 08/06/21.
//

import Foundation

struct Locations:Codable { //codable se usa para mapeo de objetos de servicios
    var results : [Results]
    
    struct Results:Codable {
        var formatted_address:String
        var place_id:String
        enum CodingKeys: String, CodingKey{
            case formatted_address = "formatted_address"
            case place_id = "place_id"
        }
    }
    
}
