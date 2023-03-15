//
//  ContentView.swift
//  my story
//
//  Created by Derrick on 3/15/23.
//

import SwiftUI
struct Contexts: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let description: String
}
struct ContentView: View {
    let contexts: [Contexts] = [
        Contexts(title:"About me", image: "", description: "asdausdbhiabubsdiuab"),
        Contexts(title:"Powers and Abilites", image: "UI", description: ""),
        Contexts(title:"The Z Fighters", image: "Z", description: "")
    ]
    var body: some View {
        NavigationView {
        VStack {
//            Text("Goku")
//                .bold()
//                .font(.largeTitle)
            Image("Goku")
                .clipShape(Circle())
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            ForEach(contexts) { context in
                NavigationLink(destination: DetailView(context: [context])) {
                    Text(context.title)
                }
            }

        }
        .padding()
        .navigationTitle("Goku")
        .navigationBarTitleDisplayMode(.inline)
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
