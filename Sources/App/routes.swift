import Vapor
import GraphQLKit

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "{\"text:\": \"Hello Word\"}"
    }
    
    app.register(graphQLSchema: Schemas.postSchema, withResolver: PostController())

}
