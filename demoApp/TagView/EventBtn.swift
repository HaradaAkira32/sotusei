//
//  EventBtn.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/09.
//

import SwiftUI

struct EventBtn: View {
    @State private var isShowFullScreen = false
    var body: some View {
        HStack{
            Spacer()
            Button(action : {
                isShowFullScreen = true
            }){
                Text("文化祭")
                    .frame(width: 120,height: 50)
                    .background(.gray.opacity(0.5))
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
            .fullScreenCover(isPresented: $isShowFullScreen){
                MainView()
            }
            Spacer()
            Button(action : {
                isShowFullScreen = true
            }){
                Text("卒業制作")
                    .frame(width: 120,height: 50)
                    .background(.gray.opacity(0.5))
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
            .fullScreenCover(isPresented: $isShowFullScreen){
                MainView()
            }
            Spacer()
        }
    }
}
struct EventBtn_Previews: PreviewProvider {
    static var previews: some View {
        EventBtn()
    }
}
