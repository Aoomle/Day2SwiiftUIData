//
//  ContentView.swift
//  Day2SwiiftUIData
//
//  Created by Abdulmalik Muhammad on 29/01/2021.
//

import SwiftUI

struct ContentView: View {
  @State private var alertIsVisible = false
  @State private var sliderValue = 50.0
  @State private var game = Game()
  
    var body: some View {
      VStack {
        Text("🎯🎯🎯\nPut the bulleye as close as you can to".uppercased())
          .kerning(2)
          .bold()
          .font(.footnote)
          .lineSpacing(4)
          .multilineTextAlignment(.center)
        
        Text("\(game.target)")
          .kerning(-1.0)
          .fontWeight(.black)
          .font(.largeTitle)
          .lineSpacing(42.0)
        
        HStack {
          Text("1")
            .bold()
            .font(.title3)
            .lineSpacing(21.0)
          Slider(value: $sliderValue, in: 1.0...100.0)
          Text("100")
            .bold()
            .font(.title3)
            .lineSpacing(21.0)
        }
        
        Button(action: {
          alertIsVisible = true
        }) {
          Text("Hit Me")
        }
        .alert(isPresented: $alertIsVisible, content: {
          let roundValue = Int(sliderValue.rounded())
          return Alert(title: Text("The slider's value is \(roundValue)\n" + "You scored \(game.points(sliderValue: roundValue)) points"), message: Text(""), dismissButton: .default(Text("Awesome!")))
        })
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
