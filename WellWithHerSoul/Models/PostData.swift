//
//  PostData.swift
//  WellWithHerSoul
//
//  Created by Grant Sivley on 2/19/21.
//

import Foundation


import Foundation


struct WelcomeElement: Codable, Identifiable {
    let id: Int
    let link: String
    let title: GUID
}

struct GUID: Codable {
    let rendered: String
}

