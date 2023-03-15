//
//  DetailView.swift
//  my story
//
//  Created by Derrick on 3/15/23.
//

import SwiftUI


struct DetailView: View {
    let context: [Contexts]
    var body: some View {
        ForEach(context) { context in
                Image(context.image)
                .clipShape(Circle())
                Text(context.description)
                .navigationTitle(context.title)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(context: [Contexts(title:"About me", image: "Goku", description: "oiasndioasdoin")])
    }
}
