//
//  MainViewBar.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/08.
//

import SwiftUI

struct MainViewBar: View {
    @State private var isShowFullScreen = false
    @State private var searchText = ""
    var body: some View {
        HStack(alignment: .top){
            Button(action: {
                isShowFullScreen = true
            }) {
                Image(systemName: "line.horizontal.3")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding()
            }
            .fullScreenCover(isPresented: $isShowFullScreen){
                FullScreenView()
            }
            Spacer()
            TextField("アプリタイトル",text: $searchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.system(size: 25))
                
        }
        Spacer()
    }
}

struct MainViewBar_Previews: PreviewProvider {
    static var previews: some View {
        MainViewBar()
    }
}

