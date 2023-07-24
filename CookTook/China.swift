//
//  Korean.swift
//  CookTook
//
//  Created by 오정현 on 2023/07/23.
//

import SwiftUI


struct ChinaFood: View{
    var body: some View{
        VStack{
            Back2()
            ChinaSearch()
            Spacer()
            JaJa()
            Mara()
            Chun()
            Cold()
            Spacer()
        }
    }
}

struct Back2: View{
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

struct ChinaSearch: View{
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


struct JaJa: View{
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
                    Image("자장면")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                  )
                  .cornerRadius(15)
                Spacer()
                ZStack {
                    Text("자장면 \n\n난이도 (중상) \n\n핵심재료 : 춘장")
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

struct Mara: View{
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
                    Image("마라탕")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                  )
                  .cornerRadius(15)
                Spacer()
                ZStack {
                    Text("마라탕 \n\n난이도 (중) \n\n핵심재료 : 많음")
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

struct Chun: View{
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
                    Image("춘권")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                  )
                  .cornerRadius(15)
                Spacer()
                ZStack {
                    Text("춘권 \n\n난이도 (중) \n\n핵심재료 : 모름")
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

struct Cold: View{
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
                    Image("중국만두")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                  )
                  .cornerRadius(15)
                Spacer()
                ZStack {
                    Text("중국만두 \n\n난이도 (중) \n\n핵심재료 : 만두")
                      .font(Font.custom("ImcreSoojin", size: 15))
                      .foregroundColor(.black)
                }
                .frame(width: 96, height: 92)
                .offset(x:-40)            }
        }
        .frame(width: 381, height: 137)
    }
}

struct ChinaFood_Previews: PreviewProvider{
    static var previews: some View{
        ChinaFood()
    }
}


