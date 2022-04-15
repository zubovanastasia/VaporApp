import Fluent
import Vapor

func routes(_ app: Application) throws {
    let authController = SignupController()
    let loginController = LoginController()
    let changeUserDataController = ChangeUserDataController()
    let logoutController = LogoutController()
    let catalogController = CatalogController()
    let goodController = GoodController()
    let reviewsController = ReviewsController()
    let basketController = BasketController()

    app.get { req in
        return "It works!"
    }
    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    app.post("signup", use: authController.signup)
    app.post("login", use: loginController.login)
    app.post("changeUserData", use: changeUserDataController.changeUserData)
    app.post("logout", use: logoutController.logout)
    app.post("getcatalog", use: catalogController.getCatalog)
    app.post("getcood", use: goodController.getCatalog)
    app.post("getreviews", use: reviewsController.getReviews)
    app.post("addreview", use: reviewsController.addReview)
    app.post("removereview", use: reviewsController.removeReview)
    app.post("getbasket", use: basketController.getBasket)
    app.post("paybasket", use: basketController.payBasket)
    app.post("addtobasket", use: basketController.addToBasket)
    app.post("deletefrombasket", use: basketController.deleteFromBasket)

    try app.register(collection: TodoController())
}
