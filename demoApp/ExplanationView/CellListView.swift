//
//  CellListView.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/23.
//

import SwiftUI

struct CellListView: View {
    var list:List
    @State var isShowList = false
    var body: some View {
        VStack(spacing:0){
            TitleCellView(title: list.title, isShowList: $isShowList)
            if isShowList {
                ForEach(list.texts, id: \.self) { text in
                    CellView(text:text)
                }
            }
        }
    }
}

struct CellListView_Previews: PreviewProvider {
    static var previews: some View {
        CellListView(list: List.lists[0])
    }
}
