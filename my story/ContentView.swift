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
        Contexts(title:"About me", image: "goku 1", description: "A Saiyan raised on Earth and the overall main protagonist of the Dragon Ball series. Originally sent to Earth as an infant, Kakarot was adopted by Grandpa Gohan and given the name Son Goku. A head injury at an early age altered Goku's memory, ridding him of his initial destructive nature and allowing him to grow up to become one of Earth's greatest defenders. He constantly strives and trains to be the greatest warrior possible, which has kept the Earth and the universe safe from destruction multiple times."),
        Contexts(title:"Powers and Abilites", image: "UI", description: "As a result of Goku's devotion to training and his Saiyan blood he's equipped with an astonishing number of abilities. Some of those abilites include (but are absolutely not limited to: Superhuman strength, speed, durability, senses, and endurance. He also has access to a vast number of Ki related transformations and attacks. "),
        Contexts(title:"The Z Fighters", image: "Z", description: "Z Fightersare a small group of warriors located on Earth. Through the many battles they have fought in order to test their skills and reach other goals they have become the unofficial defenders of Earth. Due to them just being a group of martial artists who group up from time to time they have no official leader or particular positions and members will act of their own accord at times though most if not all have some sort of sense of justice or eventually devolop one and will make drastic decisions to defend their home.")
    ]
    var body: some View {
        NavigationView {
            VStack {
//            Text("Goku")
//                .bold()
//                .font(.largeTitle)
            Image("Goku")
                .resizable()
                .clipShape(Circle())
                .frame(width: 400.0, height: 200.0)
//                .offset(y: -150)
            
            ForEach(contexts) { context in
                NavigationLink(destination: DetailView(context: [context])) {
                    Text(context.title)
                }
            }

        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity,
               alignment:.top)
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
