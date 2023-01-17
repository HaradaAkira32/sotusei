//
//  appExpView.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/19.
//

import SwiftUI

struct appExpView: View {
    var title: String = "アプリタイトル"
    @Binding var isShowFullScreen: Bool
    
    var body: some View {
        ZStack{
            Color.gray.opacity(0.3).edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    backButtonView() {
                        isShowFullScreen.toggle()
                    }
                    
                    Text(title)
                        .frame(width: 270,height: 60)
                        .background(Color.gray.opacity(0.5))
                        .cornerRadius(15)
                        .padding(30)
                }
                expImageView()
                
                textChange()
                    .padding(30)
                ScrollView{
                    ListView()
                }
            }
        }
    }
}
//struct appExpView_Previews: PreviewProvider {
//    static var previews: some View {
//        appExpView(isShowFullScreen: true)
//    }
//}
