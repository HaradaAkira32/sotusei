//
//  MainView.swift
//  demoApp
//
//  Created by cmStudent on 2022/11/25.
//

import SwiftUI

struct MainView: View {
    ///true: 文化祭　false:卒業制作
    @State var selectEvent : Int = 0
    var body: some View{
        ZStack{
            
            VStack{
                MainViewBar()
                    
                TagListView()
                    .padding(10)
                EventBtn(selectEvent: $selectEvent)
                    .padding(1)
                Spacer()
                FrameUiView()
                 
            }
        }.background(Color.gray.opacity(0.3).edgesIgnoringSafeArea(.all))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
