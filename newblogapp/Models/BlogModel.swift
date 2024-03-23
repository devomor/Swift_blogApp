//
//  BlogModel.swift
//  newblogapp
//
//  Created by Md omor on 23/3/24.
//

import Foundation

struct BlogModel: Identifiable{
    var id = UUID().uuidString
    var image: String
    var category: String
    var heading: String
    var author: String
}


var blogs:[BlogModel] = [
    BlogModel(image: "image-1", category: "category 1", heading: "Swift Ui", author: "Omar Faruk"),
    BlogModel(image: "image-2", category: "category 1", heading: "Swift Ui", author: "Omar Faruk"),
    BlogModel(image: "image-3", category: "category 1", heading: "Swift Ui", author: "Omar Faruk"),
    BlogModel(image: "image-3", category: "category 1", heading: "Swift Ui", author: "Omar Faruk"),
    BlogModel(image: "image-3", category: "category 1", heading: "Swift Ui", author: "Omar Faruk"),
    BlogModel(image: "image-3", category: "category 1", heading: "Swift Ui", author: "Omar Faruk"),
    
]
