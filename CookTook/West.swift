//
//  Korean.swift
//  CookTook
//
//  Created by 오정현 on 2023/07/23.
//

import SwiftUI


struct WestFood: View{
    var body: some View{
        VStack{
            Back3()
            WestSearch()
            Spacer()
            Pizza()
            SpaGattie()
            Stake()
            Gambas()
            Spacer()
        }
    }
}

struct Back3: View{
    var body: some View{
            HStack{
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 44, height: 28)
                  .background(
                    Image("Back")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                  )
                Text("CookTook")
                  .font(Font.custom("ImcreSoojin", size: 26))
                  .foregroundColor(.black)
                Spacer()
            }
    }
}

struct WestSearch: View{
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


struct Pizza: View{
    var body: some View{
        ZStack {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 381, height: 137)
              .cornerRadius(15)
              .overlay(
                RoundedRectangle(cornerRadius: 15)
                  .inset(by: 0.5)
                  .stroke(.black, lineWidth: 1)
              )
            HStack{
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 206, height: 137)
                  .background(
                    Image("피자")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                  )
                  .cornerRadius(15)
                Spacer()
                ZStack {
                    Text("피자 \n\n난이도 (중상) \n\n핵심재료 : 토핑")
                      .font(Font.custom("ImcreSoojin", size: 15))
                      .foregroundColor(.black)
                }
                .frame(width: 96, height: 92)
                .offset(x:-40)
            }
        }
        .frame(width: 381, height: 137)
    }
}

struct SpaGattie: View{
    var body: some View{
        ZStack {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 381, height: 137)
              .cornerRadius(15)
              .overlay(
                RoundedRectangle(cornerRadius: 15)
                  .inset(by: 0.5)
                  .stroke(.black, lineWidth: 1)
              )
            HStack{
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 206, height: 137)
                  .background(
                    Image("스파게티")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                  )
                  .cornerRadius(15)
                Spacer()
                ZStack {
                    Text("스파게티 \n\n난이도 (하) \n\n핵심재료 : 소스")
                      .font(Font.custom("ImcreSoojin", size: 15))
                      .foregroundColor(.black)
                }
                .frame(width: 96, height: 92)
                .offset(x:-40)
            }
        }
        .frame(width: 381, height: 137)
    }
}

struct Stake: View{
    var body: some View{
        ZStack {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 381, height: 137)
              .cornerRadius(15)
              .overlay(
                RoundedRectangle(cornerRadius: 15)
                  .inset(by: 0.5)
                  .stroke(.black, lineWidth: 1)
              )
            HStack{
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 206, height: 137)
                  .background(
                    Image("스테이크")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                  )
                  .cornerRadius(15)
                Spacer()
                ZStack {
                    Text("스테이크 \n\n난이도 (하) \n\n핵심재료 : 고기")
                      .font(Font.custom("ImcreSoojin", size: 15))
                      .foregroundColor(.black)
                }
                .frame(width: 96, height: 92)
                .offset(x:-40)
            }
        }
        .frame(width: 381, height: 137)
    }
}

struct Gambas: View{
    var body: some View{
        ZStack {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 381, height: 137)
              .cornerRadius(15)
              .overlay(
                RoundedRectangle(cornerRadius: 15)
                  .inset(by: 0.5)
                  .stroke(.black, lineWidth: 1)
              )
            HStack{
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 206, height: 137)
                  .background(
                    Image("감바스")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                  )
                  .cornerRadius(15)
                Spacer()
                ZStack {
                    Text("감바스 \n\n난이도 (하) \n\n핵심재료 : 새우")
                      .font(Font.custom("ImcreSoojin", size: 15))
                      .foregroundColor(.black)
                }
                .frame(width: 96, height: 92)
                .offset(x:-40)            }
        }
        .frame(width: 381, height: 137)
    }
}

struct WestFood_Previews: PreviewProvider{
    static var previews: some View{
        WestFood()
    }
}


