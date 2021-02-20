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
            ZStack {
                Color(red: 0.0, green: 1.0, blue: 0.0)
                List(networkManager.posts, rowContent: { (post) in
                    NavigationLink(
                        destination: DetailView(url: post.link),
                        label: {
                            HStack {
                                Text(post.title.rendered)
                            }
                            
                        })
                    
                    
                })
                .navigationBarTitle("Well With Her SOUL")
            }
            .onAppear(perform: {
                self.networkManager.fetchData()
            })
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
