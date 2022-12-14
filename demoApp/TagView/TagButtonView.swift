//
//  TagButtonView.swift
//  demoApp
//
//  Created by cmStudent on 2022/11/25.
//

import SwiftUI

struct TagButtonView: View {
    
    var text: String = "sample"
    
    var body: some View {
        Text(text)
            .frame(width: 80,height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(20)
    }
}

struct TagButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TagButtonView(text: "iOS")
    }
}
