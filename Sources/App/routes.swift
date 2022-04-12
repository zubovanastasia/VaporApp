import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    let authController = SignupController()
    app.post("signup", use: authController.signup)
    
    let loginController = LoginController()
    app.post("login", use: loginController.login)
    
    let changeUserDataController = ChangeUserDataController()
    app.post("changeUserData", use: changeUserDataController.changeUserData)
    
    let logoutController = LogoutController()
    app.post("logout", use: logoutController.logout)

    try app.register(collection: TodoController())
}
