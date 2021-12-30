//
//  ApiServices.swift
//  FetchApiJSON
//
//  Created by rido alpredo on 31/12/21.
//

import Foundation
import SwiftUI

class ApiServices: ObservableObject {
    @Published var post = [Post]()
    
    init(){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
            
        URLSession.shared.dataTask(with: url) { data, response, error in
            do {
                if let postData = data {
                    let decodeData = try JSONDecoder().decode([Post].self, from: postData)
                    DispatchQueue.main.async {
                        self.post = decodeData
                    }
                }else{
                    print("No Data")
                }
            }catch{
                print("Error")
            }
        }.resume()
    }
    
    }

