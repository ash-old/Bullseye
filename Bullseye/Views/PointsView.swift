//
//  PointsView.swift
//  Bullseye
//
//  Created by Ash Oldham on 22/04/2021.
//

import SwiftUI


struct PointsView: View {
  @Binding var alertIsVisible: Bool
  @Binding var sliderValue: Double
  @Binding var game: Game
    var body: some View {
      let roundedValue = Int(sliderValue.rounded())
      let points = game.points(sliderValue: roundedValue)
        VStack (spacing: 10) {
            InstructionText(text: "The slider Value is".uppercased())
            BigNumberText(text: String(roundedValue))
          BodyText(text: "You scored \(points) Points\n🎉🎉🎉")
            Button(action: {
              withAnimation {
              alertIsVisible = false
              game.startNewRound(points: points)
              }
            }) {
                ButtonText(text: "Start New Round")
            }
        }
        .padding()
        .frame(maxWidth: 400)
        .background(Color("BackgroundColor"))
        .cornerRadius(Constants.General.roundRectCornerRadius)
        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 5)
        .transition(.scale)
        
    }
}

struct PointsView_Previews: PreviewProvider {
  
  static private var alertIsVisible = Binding.constant(false)
  static private var sliderValue = Binding.constant(50.0)
  static private var game = Binding.constant(Game())
    static var previews: some View {
      PointsView(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game)
        PointsView(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game)
        PointsView(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game)
            .preferredColorScheme(.dark)
        PointsView(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game)
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
