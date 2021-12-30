//
//  ContentView.swift
//  FetchApiJSON
//
//  Created by rido alpredo on 31/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var fetch = ApiServices()
    
    var body: some View {
        
        List (fetch.post) { post in
            VStack (alignment: .leading) {
                Text(post.title)
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                Text(post.body)
                    .font(.system(size: 12, weight: .light, design: .rounded))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
