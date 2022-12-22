//
//  textChange.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/20.
//

import SwiftUI

struct textChange: View {
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    
                }){
                    Text("基本情報")
                        .frame(width: 120,height: 50)
                        .background(.gray.opacity(0.5))
                        .foregroundColor(.black)
                        .cornerRadius(15)
                        .padding(10)
                }
      
                Button(action: {
                    
                }){
                    Text("作者コメント")
                        .frame(width: 120,height: 50)
                        .background(.gray.opacity(0.5))
                        .foregroundColor(.black)
                        .cornerRadius(15)
                }
            }
        }
    }
}

struct textChange_Previews: PreviewProvider {
    static var previews: some View {
        textChange()
    }
}
