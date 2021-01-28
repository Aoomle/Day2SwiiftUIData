//
//  ContentView.swift
//  Day2SwiiftUIData
//
//  Created by Abdulmalik Muhammad on 29/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack {
        Text("🎯🎯🎯\nPut the bulleye as close as you can to".uppercased())
          .kerning(2)
          .bold()
          .font(.footnote)
          .lineSpacing(4)
          .multilineTextAlignment(.center)
        
        Text("89")
          .kerning(-1.0)
          .fontWeight(.black)
          .font(.largeTitle)
          .lineSpacing(42.0)
        
        HStack {
          Text("1")
            .bold()
            .font(.title3)
            .lineSpacing(21.0)
          Slider(value: .constant(10), in: 1.0...100.0)
          Text("100")
            .bold()
            .font(.title3)
            .lineSpacing(21.0)
        }
        
        Button(action: {
          print("Button was tapped")
        }) {
          Text("Hit Me")
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
      ContentView()
          .previewLayout(.fixed(width: 538, height: 320))
    }
}
