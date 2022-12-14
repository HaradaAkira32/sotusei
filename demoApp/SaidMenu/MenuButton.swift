//
//  MenuButton.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/06.
//

import SwiftUI

struct MenuButton: View {
    @State var isOpenSideMenu: Bool = false
    var body: some View {
        ZStack{
            NavigationView {
                Text("Hello, World!")
                    .navigationBarTitle("メイン画面")
                    .navigationBarItems(leading: (
                        Button(action: {
                            self.isOpenSideMenu.toggle()
                        }) {
                            Image(systemName: "line.horizontal.3")
                                .imageScale(.large)
                        }))
            }
            SideMenuView(isOpen: $isOpenSideMenu)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton()
    }
}

struct SideMenuView: View {
    @Binding var isOpen: Bool
    let width: CGFloat = 400
    
    var body: some View {
        ZStack {
            // ...背景部分...
            
            // リスト部分
            HStack {
                VStack() {
                    SideMenuContentView(topPadding: 120,text: "2021")
                    Divider()
                    SideMenuContentView(text: "2022")
                    Divider()
                    SideMenuContentView(text: "2023")
                    Divider()
                    Spacer()
                }
                .frame(width: width)
                .background(Color(UIColor.systemGray6))
                .offset(x: self.isOpen ? 0 : -self.width)
                .animation(.easeIn(duration: 0.25))
                Spacer()
            }
        }
    }
}

// セルのビュー
struct SideMenuContentView: View {
    let topPadding: CGFloat
    let text: String
    
    init(topPadding: CGFloat = 30, text: String) {
        self.topPadding = topPadding
        self.text = text
    }
    
    var body: some View {
        HStack {
            Text(text)
                .foregroundColor(.gray)
                .font(.headline)
            Spacer()
        }
        .padding(.top, topPadding)
        .padding(.leading, 32)
    }
}






//ナビゲーション
//        NavigationView {
//            Text("Hello, World!")
//                .navigationBarTitle("メイン画面")
//                .navigationBarItems(leading: (
//                    Button(action: {
//                        // Todo: サイドメニューを開く
//                    }) {
//                        Image(systemName: "line.horizontal.3")
//                            .imageScale(.large)
//                    }))
//        }
//}
