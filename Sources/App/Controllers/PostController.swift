//
//  File.swift
//  
//
//  Created by Marcos Souza on 10/2/20.
//

import Vapor
import GraphQLKit

final class PostController {
    func fetchPosts(request: Request, _: NoArguments) throws -> [Post] {
        return posts
    }

    private var posts = [
        Post(id: 1, title: "My first post")
    ]
}
