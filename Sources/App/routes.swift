import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    let authController = AuthController()
    app.post("signup", use: authController.signUp)
    
    let loginController = LoginController()
    app.post("login", use: loginController.login)

    try app.register(collection: TodoController())
}
