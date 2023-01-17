//
//  backButtonView.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/19.
//

import SwiftUI

struct backButtonView: View {
    var action: () -> ()
    var body: some View {
        
        
        Button(action:{
            action()
        }){
            Image(systemName: "chevron.backward")
                .padding()
                .font(.system(size: 30))
        }
    }
}

struct backButtonView_Previews: PreviewProvider {
    static var previews: some View {
        backButtonView(){}
    }
}
