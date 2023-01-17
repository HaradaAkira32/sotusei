//
//  cellView.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/23.
//

import SwiftUI

struct CellView: View {
    var text : String
    var body: some View {
        
        HStack{
            Text(text)
                .padding(30)
            Spacer()
        }
    }
}
struct cellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(text: "関連情報")
    }
}
