//
//  ListView.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/23.
//

import SwiftUI

struct ListView: View {
    
    var body: some View {
        ZStack {
            VStack{
                ForEach(List.lists, id:\.self) { list in
                    CellListView(list: list)
                }
            }
        }
    }
}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
