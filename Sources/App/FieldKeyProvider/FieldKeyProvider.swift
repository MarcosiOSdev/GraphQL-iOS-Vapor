//
//  File.swift
//  
//
//  Created by Marcos Souza on 10/2/20.
//

import GraphQLKit

extension Post: FieldKeyProvider {
    typealias FieldKey = FieldKeys

    enum FieldKeys: String {
        case id
        case title
    }
}

extension PostController: FieldKeyProvider {
    typealias FieldKey = FieldKeys

    enum FieldKeys: String {
        case fetchPosts
    }
}
