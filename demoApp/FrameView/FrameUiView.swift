//
//  FrameUiView.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/09.
//

import SwiftUI

struct FrameUiView: View {
    private let uiImage = UIImage(named: "TestIcon")!
    private var appName = "アプリ名"
    private var tag = "タグ"
    var body: some View {
        ZStack{
            RoundedRectangle(cornerSize: .init(width: 10, height: 20))
                .fill(Color.green.opacity(0.5))
                .frame(width: 370, height: 150)
            
            VStack(alignment: .leading){
                
                HStack{
                    Image(uiImage: uiImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 130, height: 130)
                        .cornerRadius(32.0)
                    VStack{
                        Text(appName)
                            .padding(30)
                        Text(tag)
                            .frame(width: 80,height: 50)
                            .background(.red)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                }
            }
        }
    }
}

struct FrameUiView_Previews: PreviewProvider {
    static var previews: some View {
        FrameUiView()
    }
}
