//
//  Shapes.swift
//  Bullseye
//
//  Created by Ash Oldham on 17/04/2021.
//

import SwiftUI

struct Shapes: View {
  @State private var wideShapes = true
    var body: some View {
        VStack {
          if !wideShapes {
            Circle()
                .strokeBorder(Color.blue, lineWidth: 20.0)
                .frame(width: 200, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
              .transition(.scale)
          }
          
          RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
            .fill(Color.blue)
            .frame(width: wideShapes ? 200 : 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            .animation(.easeInOut)
          Capsule()
            .fill(Color.blue)
            .frame(width: wideShapes ? 200 : 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
          Button(action: {
            withAnimation {
            wideShapes.toggle()
            }
          }) {
            Text("Animate!")
          }
        }
      
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}


