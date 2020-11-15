//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by Parsa Jabbari on 11/12/20.
//

import Foundation
class NetworkManager: ObservableObject {
    @Published var hits = [Post]()
    func fetchData() {
        let urlString = "https://hn.algolia.com/api/v1/search?tags=front_page"
        if let url = URL(string: urlString) {
            let urlSession = URLSession(configuration: .default)
            let task = urlSession.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let data = data {
                        do {
                            let postData = try decoder.decode(PostData.self, from: data)
                            DispatchQueue.main.async {
                                self.hits = postData.hits
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
