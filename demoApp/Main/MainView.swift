//
//  MainView.swift
//  demoApp
//
//  Created by cmStudent on 2022/11/25.
//

import SwiftUI

struct MainView: View {
    var body: some View{
        ZStack{
            VStack{
                MainViewBar()
                TagListView()
                    .padding(10)
                EventBtn()
                    .padding(1)
                Spacer()
                FrameUiView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
