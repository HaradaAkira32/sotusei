//
//  filedText.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/20.
//

import SwiftUI

struct TextFiledView: View {
    var str: String = "基本情報"

    @State var isshowList: Bool = false
    var body: some View {
        
        List {
            VStack(spacing: 0){
                HStack{
                    Text(str)
                    
                    Spacer()
                    
                    Button(action: {
                        isshowList.toggle()
                    }){
                        Image(systemName: (isshowList ? "chevron.left" : "chevron.down"))
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10)
                    }
                }
            }
            if isshowList == true{
                Text("あいうえお")
            }
        }
    }
}

struct filedText_Previews: PreviewProvider {
    static var previews: some View {
        TextFiledView()
    }
}
