import Vapor

final class MainController {

    /// Deletes a parameterized `Todo`.
    func hello(_ req: Request) throws -> Future<View> {

        
        let name = try req.parameters.next(String.self)
         let view = try req.view().render("hello", ["name": name])
        
        return view
        
    }
    
    func home(_ req: Request) throws -> Future<View> {
        
        
        //let name = try req.parameters.next(String.self)
        let no = Int(arc4random_uniform(3))
        let images = ["forestbridge.jpg", "rebar.jpg", "trucks.jpg"]
        let image = images[no]
        let view = try req.view().render("home", ["image":image])
        
        return view
        
    }
    
}
