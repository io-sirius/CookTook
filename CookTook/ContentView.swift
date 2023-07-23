//
//  ContentView.swift
//  CookTook
//
//  Created by 오정현 on 2023/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            CookTookTitle()
            SearchPart()
            SelectMenuPart()
            PreviouslyViewedDishesPart()
            MenuBarPart()
        }
        .frame(width: 393, height: 852)
        .background(.white)
    }

}

struct CookTookTitle: View{
    var body: some View{
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 393, height: 85)
            HStack{
                Text("CookTook")
                    .font(.custom("ImcreSoojin", size: 26))
                    .foregroundColor(.black)
                 //  .position(, y:28)      -> offset 과 position 차이...???
                    .offset(x:-100)
                Image("menu")
                    .frame(width: 31, height: 16)
                 //  .position(x:150, y:28)
                    .offset(x:100)
            }
            .position(x:196.5, y:42.5)
        }
        // CooKTook Title P
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
                        .stroke(.black, lineWidth: 4)
                )
                .rotationEffect(Angle(degrees: 0.08))
            
            Image("search")
                .frame(width: 26.51908, height: 23.30665)
                .position(x:27, y:28)
        }
        .frame(width: 370.07153, height: 54.27816)
        .position(x:197,y:100)
    }
}


// 음식 종류별 메뉴 선택창 ui
struct SelectMenuPart: View{
    var body: some View{
        ZStack{
            VStack{
                HStack{
                    ZStack {
                        VStack{
                            ZStack{
                                
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 56, height: 50)
                                    .background(
                                        Image("image 2")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                    )
                                    .offset(x:50, y:16)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 94, height: 84)
                                    .background(
                                        Image("image 1")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                    )
                            }   // 이미지 ZStack 으로 곁쳐서 넣기
                            Text("한식")
                                .font(Font.custom("ImcreSoojin", size: 20))
                                .foregroundColor(.black)
                        }   // VStack 으로 이미지와 텍스트 수직으로 배열
                    }
                    .frame(width: 129, height: 123)
                    .offset(x:-25)
                    
                    
                    VStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 89, height: 89)
                            .background(
                                Image("image 4")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            )
                        
                        Text("일식")
                            .font(Font.custom("ImcreSoojin", size: 20))
                            .foregroundColor(.black)
                    }
                    .frame(width: 129, height: 123)
                    .offset(x:15)
        
                }
                .frame(width: 258, height: 13)
                // 한식, 일식 배열 End
                
                // ------------- 중식, 양식 배열 Start
            
                HStack{
                    VStack{
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 104, height: 104)
                          .background(
                            Image("image 5")
                              .resizable()
                              .aspectRatio(contentMode: .fit)
                          )
                        Text("중식")
                          .font(Font.custom("ImcreSoojin", size: 20))
                          .foregroundColor(.black)
                    }
                    .offset(x:-30,y:83)
                    
                    
                    VStack{
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 114, height: 109)
                          .background(
                            Image("image 6")
                              .resizable()
                              .aspectRatio(contentMode: .fit)
                          )
                        Text("양식")
                          .font(Font.custom("ImcreSoojin", size: 20))
                          .foregroundColor(.black)
                    }
                    .offset(x:30,y:78)
                }
               
                // 중식, 양식 배열 End
            
            }
        }
        .frame(width: 303, height: 314)
        .position(x:196,y:300)
    }
}


// 사용자가 이전에 봤던 음식에 관한 Ui
struct PreviouslyViewedDishesPart: View{
    var body: some View{
        ZStack {
            VStack{
                Text("Previously viewed dishes")
                  .font(Font.custom("ImcreSoojin", size: 12))
                  .foregroundColor(.black)
                  .position(x:74,y:6)
                
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 370, height: 183)
                  .overlay(
                    Rectangle()
                      .inset(by: 1)
                      .stroke(.black, lineWidth: 2)
                  )
            }
            
        }
        .frame(width: 370, height: 204)
        .position(x:197, y: 650)
    }
}


// 사용자 메뉴 선택창 Ui
struct MenuBarPart: View{
    var body: some View{
        ZStack {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 393, height: 71)
              .background(.white)
              .overlay(
                Rectangle()
                  .inset(by: 2)
                  .stroke(.black, lineWidth: 4)
              )
            
            HStack{
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 45, height: 56)
                  .background(
                    Image("home")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                  )
                  .offset(x:-60)
                //home
                
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 50, height: 51)
                  .background(
                    Image("like")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                  )
                  
                //like
                
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 62, height: 59)
                  .background(
                    Image("user")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                  )
                  .overlay(
                    Rectangle()
                      .inset(by: 0.5)
                      .stroke(.white, lineWidth: 1)
                  )
                  .offset(x:60)
                //user
            }
        }
        .frame(width: 393, height: 71)
        .position(x:196.5, y:810)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(    )
    }
}


