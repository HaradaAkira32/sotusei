//
//  textChange.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/20.
//

import SwiftUI

struct textChange: View {
    @State private var selection : Int = 2
    var body: some View {
        VStack{
            Picker("", selection: self.$selection) {
                Text("基本情報").tag(1)
                Text("作者コメント").tag(2)
                
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct textChange_Previews: PreviewProvider {
    static var previews: some View {
        textChange()
    }
}
