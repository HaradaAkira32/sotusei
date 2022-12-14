//
//  TagListView.swift
//  demoApp
//
//  Created by cmStudent on 2022/11/25.
//

import SwiftUI

struct TagListView: View {
    var list = ["iOS", "Android","Iot","AR","firebase","Bluetooth"]
    
    var body: some View {
        ScrollView([.horizontal]){
            HStack{
                ForEach(0..<self.list.count) { num in
                    TagButtonView(text: list[num])
                }
            }
        }
    }
}

struct TagListView_Previews: PreviewProvider {
    static var previews: some View {
        TagListView()
    }
}
