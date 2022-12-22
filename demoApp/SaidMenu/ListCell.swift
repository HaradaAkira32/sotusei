//
//  ListCell.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/14.
//

import SwiftUI

struct ListCell: View {
    var text: String
    var body: some View {
        HStack{
            Text(text)
                .padding()
            Spacer()
        }
        
        
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(text: "aaaaaaa")
    }
}
