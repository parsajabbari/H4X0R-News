//
//  PostData.swift
//  H4X0R News
//
//  Created by Parsa Jabbari on 11/12/20.
//

import Foundation

struct PostData: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        objectID
    }
    let title: String
    let points: Int
    let url: String?
    let objectID: String
}
