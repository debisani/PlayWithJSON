//
//  WebService.swift
//  PlayWithJSON
//
//  Created by debi sani on 24/06/20.
//  Copyright © 2020 debi sani. All rights reserved.
//

import Foundation
import Combine

class ObserverModel : ObservableObject {
    @Published var post = [Post]()
     
    init() {
        let url = URL(string: "https://jsonplaceholder.typicode.com/todos")!
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            do {
                if let postData = data {
                    let decodedData = try JSONDecoder().decode([Post].self, from: postData)
                    DispatchQueue.main.async {
                        self.post = decodedData
                    }
                } else {
                    print("No data")
                }
            } catch {
                print("Error")
            }
        }.resume()
    }
}


