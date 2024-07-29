//
//  PostData.swift
//  H4CK3R N3WZ
//
//  Created by Nathaniel Baez on 7/9/24.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
    var id: String {
        return objectID
    }
}
