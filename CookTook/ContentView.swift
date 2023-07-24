//
//  ContentView.swift
//  CookTook_project
//
//  Created by 오정현 on 2023/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                CookTookTitle()
                SearchPart()
                SelectMenuPart()
                PreviouslyViewedDishesPart().offset(y:35)
                Spacer()
                
            }
        }
    }
}

struct CookTookTitle: View{
    var body: some View{
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 393, height: 0)
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
        }
        
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
    

// 음식 종류별 메뉴 선택창 ui
struct SelectMenuPart: View{
    
    
    var body: some View{
        
        ZStack{
            VStack{
                HStack{
                    // 한식
                    NavigationLink(destination: KoreanFood()){
                        ZStack {
                            // VStack 으로 이미지와 텍스트 수직으로 배열
                            VStack{
                                // 한식 이미지 부분
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 56, height: 50)
                                        .background(
                                            Image("image 2")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                        )
                                        .offset(x:34, y:16)
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 94, height: 84)
                                        .background(
                                            Image("image 1")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                        )
                                        .offset(x:-10)
                                }   // 이미지 ZStack 으로 곁쳐서 넣기
                                
                                // 한식 텍스트 부분
                                Text("한식")
                                    .font(Font.custom("ImcreSoojin", size: 20))
                                    .foregroundColor(.black)
                            }
                        }
                        .frame(width: 129, height: 123)
                        .offset(x:-25)
                    }
                    
                    NavigationLink(destination: JapanFood()){
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
                }
                .frame(width: 258, height: 13)
                // 한식, 일식 배열 End
                
                // ------------- 중식, 양식 배열 Start
                
                HStack{
                    NavigationLink(destination: ChinaFood()){
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
                    }
                    
                    NavigationLink(destination: WestFood()){
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
                }
                
                // 중식, 양식 배열 End
                
            }
        }
        .frame(width: 303, height: 314)
    }
}

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
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
