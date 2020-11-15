//
//  ContentView.swift
//  H4X0R News
//
//  Created by Parsa Jabbari on 11/12/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()

    var body: some View {
        NavigationView {
            List(networkManager.hits) { post in
                NavigationLink(
                    destination: WebView(urlString: post.url),
                    label: {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    })
            }            .navigationBarTitle("H4X0R N3W5")
        }
        .onAppear(perform: {
            networkManager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
