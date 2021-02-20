//
//  NetworkManager.swift
//  WellWithHerSoul
//
//  Created by Grant Sivley on 2/19/21.
//

import Foundation

class NetworkManger: ObservableObject {
    
    @Published var posts = [WelcomeElement]()
    
    func fetchData() {
        if let url = URL(string: "https://wellwithhersole.com/wp-json/wp/v2/posts") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode([WelcomeElement].self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts.append(contentsOf: results)
                                // check to see if it works
                                print(self.posts)
                            }
                        } catch {
                            print(error)
                        }
                    }
                    
                }
            }
            task.resume()
            
        }
    }
}
