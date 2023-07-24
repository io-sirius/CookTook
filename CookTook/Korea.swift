//
//  Korea.swift
//  CookTook
//
//  Created by 오정현 on 2023/07/23.
//

import SwiftUI

struct ContentView: View{
    var body: some View{
        SearchPart()
    }
}

struct SearchPart: View{
    var body: some View{
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 370, height: 53.78388)
                .background(.white)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .inset(by: 2)
                        .stroke(.black, lineWidth: 3)
                )
                .rotationEffect(Angle(degrees: 0.08))
            
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 37, height: 33)
              .background(
                Image("search 1")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
              )
              .offset(x:-150)
        }
        .frame(width: 370.07153, height: 54.27816)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


