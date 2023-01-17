//
//  cellView.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/23.
//

import SwiftUI

struct TitleCellView: View {
    
    var title: String
    @Binding var isShowList : Bool
    
    var body: some View {
        
        HStack{
            Text(title)
            
            Spacer()
            
            Button(action: {
                isShowList.toggle()
            }){
                Image(systemName: (isShowList ? "chevron.left" : "chevron.down"))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 10)
            }
        }
        .padding()
    }
}

//struct TitleCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        TitleCellView()
//    }
//}
