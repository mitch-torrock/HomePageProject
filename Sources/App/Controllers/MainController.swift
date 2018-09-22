import Vapor

final class MainController {

    /// Deletes a parameterized `Todo`.
    func hello(_ req: Request) throws -> Future<View> {

        
        let name = try req.parameters.next(String.self)
         let view = try req.view().render("hello", ["name": name])
        
        return view
        
    }
}
