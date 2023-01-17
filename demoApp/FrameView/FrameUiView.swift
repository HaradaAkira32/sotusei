//
//  FrameUiView.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/09.
//

import SwiftUI

struct FrameUiView: View {
    @State private var isShowFullScreen = false
    // 仮データ
    var appData: [CMAppData] = []
    
    init() {
        appData.append(.init(id: 1, icon: "icon", title: "たろうのapp", studentID: "21cm01xx", studentName: "ますかわ　たろう"))
        appData.append(.init(id: 2, icon: "icon", title: "じろうのapp", studentID: "21cm01xx", studentName: "ますかわ　じろう"))
        appData.append(.init(id: 3, icon: "icon", title: "ジジのapp", studentID: "21cm01xx", studentName: "いしづか　じじ"))
    }
    
    var body: some View {
        ZStack {
            ScrollView {
                
                ForEach(appData) { app in
                    Button {
                        isShowFullScreen = true
                    } label: {
                        CardView(title: app.title, studentID: app.studentID, studentName: app.studentName)
                    }
                    .fullScreenCover(isPresented: $isShowFullScreen){
                        appExpView(isShowFullScreen: $isShowFullScreen)
                        
                    }
                }
            }
        }
    }
    
    // カードのView
    struct CardView: View {
        @State var isFavorited = false
        
        let title: String
        let studentID: String
        let studentName: String
        
        var body: some View {
            ZStack {
                // 背景の白いカード
                Rectangle()
                    .frame(width: 365, height: 180)
                    .cornerRadius(10.0)
                    .foregroundColor(.white)
                    .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.black, lineWidth: 2)
                    )
                    .cornerRadius(30)
                // 影なんかつけちゃったり
                //一回とりました
//                    .shadow(color: .gray, radius: 1, x: 5, y: 5)
                
                // お気に入りボタン
                HStack {
                    Spacer()
                        .frame(width: 270)
                    VStack {
                        Button {
                            isFavorited.toggle()
                            
                        } label: {
                            // いいねすると星が光る
                            Image(systemName: isFavorited ? "star.fill" : "star")
                                .font(.system(size: 25.0))
                            
                            // いいねすると星が光る
                                .foregroundColor(isFavorited ? .yellow : .gray)
                        }
                        Spacer()
                            .frame(height: 100.0)
                    }
                }
                
                
                HStack {
                    //                アプリのアイコン。ここは画像をどういう扱いするかで変わる。
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .cornerRadius(20.0)
                        .foregroundColor(Color(uiColor: .systemMint))
                    Spacer()
                        .frame(width: 160)
                    
                }
                
                // アプリ名、名前
                HStack {
                    Spacer()
                        .frame(width: 80)
                    VStack {
                        
                        // FIXME: この辺は、長さによって大きさを変えたいねぇ…
                        Text(title)
                            .font(.title3)
                            .padding(.bottom)
                        Text(studentID)
                            .font(.caption)
                        Text(studentName)
                            .font(.caption)
                    }
                    // ボタンでこのView使うと色変になるから防止のために色を指定する
                    .foregroundColor(.black)
                }
            }
        }
    }
    
    struct FrameUiView_Previews: PreviewProvider {
        static var previews: some View {
            FrameUiView()
        }
    }
}


struct CMAppData: Codable, Identifiable {
    let id: Int
    let icon: String
    let title: String
    let studentID: String
    let studentName: String
}
