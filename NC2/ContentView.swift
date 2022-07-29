//
//  ContentView.swift
//  NC2
//
//  Created by Eldwin Anthony on 26/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "star.fill")
                    Text("Goals")
                }
            
            ResourceView()
                .tabItem{
                    Image(systemName: "books.vertical.fill")
                    Text("Resources")
                }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
