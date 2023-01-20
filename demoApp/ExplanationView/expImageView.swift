//
//  expImageView.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/19.
//

import SwiftUI

struct expImageView: View {
    @State var selection: Int = 0
    let images : [String] =
        ["TestIcon","TestIcon2","TestIcon3","TestIcon2","TestIcon3"]
    var body: some View {
        VStack{
            TabView(selection: $selection) {
                ForEach(0..<images.count) { index in
                    Image(images[index])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            SelectBarView(count: images.count, selected: $selection)
            
        }
       
    }
}

struct expImageView_Previews: PreviewProvider {
    static var previews: some View {
        expImageView()
    }
}
