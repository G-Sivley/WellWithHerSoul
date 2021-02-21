//
//  ContentView.swift
//  WellWithHerSoul
//
//  Created by Grant Sivley on 2/19/21.
//

import SwiftUI



struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManger()
    
    // I want listViewCells background to be: UIColor(red: 0.27, green: 0.37, blue: 0.45, alpha: 1.00)
    
    init() {
        // uses UIColor -- This is the background of the whole thing
        UITableView.appearance().backgroundColor = UIColor(red: 0.19, green: 0.30, blue: 0.39, alpha: 1.00)
        }
    
    var body: some View {
        NavigationView {
            ZStack {
                List(networkManager.posts, rowContent: { (post) in
                    NavigationLink(
                        destination: DetailView(url: post.link),
                        label: {
                            HStack {
                                Text(post.title.rendered)
                                    .listRowBackground(Color.blue)
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
