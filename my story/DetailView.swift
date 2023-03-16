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
        VStack {
            ForEach(context) { context in
                VStack {
                    Image(context.image)
                        .resizable()
                    //                .clipShape(Circle())
                        .frame(width: 200.0, height: 200.0)
                    //                .offset(y: -90)
                    Text(context.description)
                        .navigationTitle(context.title)
//                    Spacer()
                }
                .frame(maxWidth: .infinity,
                       maxHeight:.infinity,
                       alignment:.topLeading)
        }
    }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(context: [Contexts(title:"About me", image: "Goku", description: "oiasndioasdoin")])
    }
}
