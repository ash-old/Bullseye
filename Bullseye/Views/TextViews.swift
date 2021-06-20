//
//  TextViews.swift
//  Bullseye
//
//  Created by Ash Oldham on 17/04/2021.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .foregroundColor(Color("TextColor"))
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
    }
}

struct BigNumberText: View {
    var text: String
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .fontWeight(.black)
            .kerning(-1.0)
            .multilineTextAlignment(.center)
            .font(.largeTitle)
    }
}

struct SliderLabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .bold()
            .frame(width: 35)
    }
}

struct LabelView: View {
    var text: String
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .kerning(1.5)
            .bold()
            .font(.caption)
    }
}

struct BodyText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
    }
}

struct ButtonText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.accentColor)
            .cornerRadius(12.0)
            .foregroundColor(Color.white)
            
    }
}

struct ScoreText: View {
    var score: Int
    var body: some View {
        Text(String(score))
          .foregroundColor(Color("TextColor"))
          .fontWeight(.bold)
          .kerning(-0.2)
//          .multilineTextAlignment(.center)
          .font(.title3)
    }
}

struct DateText: View {
    var date: Date
    var body: some View {
      Text(date, style: .time)
        .foregroundColor(Color("TextColor"))
        .fontWeight(.bold)
        .kerning(-0.2)
//        .multilineTextAlignment(.center)
        .font(.title3)
    }
}

struct BigBoldText: View {
  let text: String
  var body: some View {
    Text(text.uppercased())
      .foregroundColor(Color("TextColor"))
      .fontWeight(.black)
      .kerning(2.0)
      .font(.title)
  }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions")
            BigNumberText(text: "999")
            SliderLabelText(text: "999")
            LabelView(text: "99")
            BodyText(text: "You scored 200 Points\n🎉🎉🎉")
            ButtonText(text: "Start New Round")
            ScoreText(score: 234)
            DateText(date: Date())
            BigBoldText(text: "Leaderboard")
        }
        .padding()
    }
}
