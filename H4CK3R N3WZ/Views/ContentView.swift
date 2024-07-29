//
//  ContentView.swift
//  H4CK3R N3WZ
//
//  Created by Nathaniel Baez on 7/9/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationBarTitle("H4CK3R N3WZ")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola")
//]

#Preview {
    ContentView()
}
