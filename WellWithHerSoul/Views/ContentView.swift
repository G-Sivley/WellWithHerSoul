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
        Text("Placeholder")
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
