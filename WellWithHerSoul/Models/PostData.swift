//
//  PostData.swift
//  WellWithHerSoul
//
//  Created by Grant Sivley on 2/19/21.
//

import Foundation


struct Results: Decodable {

    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var objectID: Int {
        return id
    }
    let id: Int
    // fix slug later
    let slug: String
    let link: String
}
