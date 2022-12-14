//
//  MainViewBar.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/08.
//

import SwiftUI

struct MainViewBar: View {
    @State private var isShowFullScreen = false
    @State private var searchedt = ""
    var body: some View {
        HStack(alignment: .top){
            Button(action: {
                isShowFullScreen = true
            }) {
                Image(systemName: "line.horizontal.3")
                    .padding()
            }
            .fullScreenCover(isPresented: $isShowFullScreen){
                FullScreenView()
            }
            Spacer()
            
            TextField("アプリタイトル",text: $searchedt)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
}

struct MainViewBar_Previews: PreviewProvider {
    static var previews: some View {
        MainViewBar()
    }
}

