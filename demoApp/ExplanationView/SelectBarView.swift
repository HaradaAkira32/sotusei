//
//  SelectBarView.swift
//  demoApp
//
//  Created by cmStudent on 2023/01/19.
//

import SwiftUI

struct SelectBarView: View {
    var count : Int
    @Binding var selected: Int
    var body: some View {
        HStack {
            ForEach(0 ..< count) { num in
                Circle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(num == selected ? .white : .black)
                    .onTapGesture {
                        selected = num
                    }
            }
            
                
        }
        .frame(height: 20)
        .cornerRadius(8)

    }
}
//
//struct SelectBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        SelectBarView()
//    }
//}
