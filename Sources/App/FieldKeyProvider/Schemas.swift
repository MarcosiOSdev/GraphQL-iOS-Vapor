//
//  File.swift
//  
//
//  Created by Marcos Souza on 10/2/20.
//
import Vapor
import GraphQLKit

enum Schemas {
    static var postSchema = Schema<PostController, Request>([
        Type(Post.self, fields: [
            Field(.title, at: \.title),
            Field(.id, at: \.id),
        ]),
        Query([
            Field(.fetchPosts, at: PostController.fetchPosts),
        ]),
    ])
}
