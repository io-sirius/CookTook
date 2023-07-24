//
//  Korean.swift
//  CookTook
//
//  Created by 오정현 on 2023/07/23.
//

import SwiftUI


struct JapanFood: View{
    var body: some View{
        VStack{
            Back1()
            JapanSearch()
            Spacer()
            Raman()
            DenFra()
            DonGas()
            Sushi()
            Spacer()
        }
    }
}

struct Back1: View{
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

struct JapanSearch: View{
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


struct Raman: View{
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
                    Image("라멘")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                  )
                  .cornerRadius(15)
                Spacer()
                ZStack {
                    Text("라멘 \n\n난이도 (중) \n\n핵심재료 : 고기")
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

struct DenFra: View{
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
                    Image("덴푸라")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                  )
                  .cornerRadius(15)
                Spacer()
                ZStack {
                    Text("덴푸라 \n\n난이도 (하) \n\n핵심재료 : 튀김")
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

struct DonGas: View{
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
                    Image("돈가스")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                  )
                  .cornerRadius(15)
                Spacer()
                ZStack {
                    Text("돈가스 \n\n난이도 (하) \n\n핵심재료 : 고기")
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

struct Sushi: View{
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
                    Image("초밥")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                  )
                  .cornerRadius(15)
                Spacer()
                ZStack {
                    Text("초밥 \n\n난이도 (중상) \n\n핵심재료 : 생선")
                      .font(Font.custom("ImcreSoojin", size: 15))
                      .foregroundColor(.black)
                }
                .frame(width: 96, height: 92)
                .offset(x:-40)            }
        }
        .frame(width: 381, height: 137)
    }
}

struct JapanFood_Previews: PreviewProvider{
    static var previews: some View{
        JapanFood()
    }
}


