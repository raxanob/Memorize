//
//  ContentView.swift
//  Memorize
//
//  Created by Rayane Xavier da Nobrega on 21/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                CardView(isFaceUp: true)
                CardView()
                CardView()
                CardView()
            }
            HStack {
                CardView()
                CardView()
                CardView(isFaceUp: true)
                CardView()
            }
        }
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 16)
                    .strokeBorder(lineWidth: 2)
                    .foregroundColor(.white)
                Text("🤡").font(.largeTitle)
                    
            } else {
                RoundedRectangle(cornerRadius: 16)
            }
        })
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
