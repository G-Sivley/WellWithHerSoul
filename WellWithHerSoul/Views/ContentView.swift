//
//  ContentView.swift
//  WellWithHerSoul
//
//  Created by Grant Sivley on 2/19/21.
//

import SwiftUI



struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManger()
    
    var body: some View {
        NavigationView {
            
            List(networkManager.posts, rowContent: { (post) in
                NavigationLink(
                    destination: DetailView(url: post.link),
                    label: {
                        HStack {
                            Text("Votes: \(post.link)")
                                .font(.system(size: 15))
                            //Text(post.title)
                        }
                        
                    })
                
                
            })
            .navigationBarTitle("Hacker News")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
