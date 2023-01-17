//
//  expImageView.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/19.
//

import SwiftUI

struct expImageView: View {
    var body: some View {
        VStack{
            HStack{
                //戻るボタン
                Button(action:{
                    //アクション
                }){
                    Image(systemName: "chevron.backward")
                        .padding()
                        .font(.system(size: 30))
                }
                Image("TestIcon")
                    .resizable()
                    .frame(width: 250,height: 250)
                
                //進むボタン
                Button(action:{
                    //アクション
                }){
                    Image(systemName: "chevron.backward")
                        .padding()
                        .font(.system(size: 30))
                        .rotation3DEffect(.degrees(180),
                                          axis: (x: 0, y: 1, z: 0))
                }
            }
        }
    }
}

struct expImageView_Previews: PreviewProvider {
    static var previews: some View {
        expImageView()
    }
}
