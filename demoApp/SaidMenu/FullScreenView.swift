//
//  FullScreenView..swift
//  demoApp
//
//  Created by cmStudent on 2022/12/08.
//

import SwiftUI

struct FullScreenView: View {
    
    @Environment(\.presentationMode) var presentation
    
    @State private var showYear = false
    
    let years = ["2021","2022","2023","2024","2025"]
    var body: some View {
        NavigationView {
            VStack {
                Button(action:{
                    presentation.wrappedValue.dismiss()
                }){
                    Image(systemName: "chevron.backward")
                        .padding()
                        .font(.system(size: 30))
                }
                
                
                ForEach(years, id: \.self) { year in
                    Button {
                        showYear.toggle()
                    } label: {
                        ListCell(text: year)
                    }.fullScreenCover(isPresented: $showYear) {
                        MainView()
                    }
                        
                        
                        
                }
            }
        }
    }
}
struct FullScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenView()
    }
}
