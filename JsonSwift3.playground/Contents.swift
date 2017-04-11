//: EXAMPLE OF SWIFT 3.0 API CALLS THAT NO LONGER USE THE NS prefix



import UIKit
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely(continueIndefinitely: true)

URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)



let config = URLSessionConfiguration.default // Session Configuration
let session = URLSession(configuration: config) // Load configuration into Session
let url = URL(string: "https://rxnav.nlm.nih.gov/REST/rxcui.json?idtype=NDC&id=11523-7020-1")!

let task = session.dataTask(with: url, completionHandler: {
    (data, response, error) in
    
    if error != nil {
        
        print(error!.localizedDescription)
        
    } else {
        
        do {
            
            if let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [String: Any]
            {
                
                //Implement your logic
                print(json)
                
            }
            
        } catch {
            
            print("error in JSONSerialization")
            
        }
        
        
    }
    
})
task.resume()
