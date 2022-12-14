//
//  SaidMenu.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/08.
//

import SwiftUI

struct SaidMenu: View {
 
    var body: some View {
        
        VStack{
            MainViewBar()
            TagListView()
            Spacer()
        }
        
    }
}

struct SaidMenu_Previews: PreviewProvider {
    static var previews: some View {
        SaidMenu()
    }
}
