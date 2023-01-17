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
                        .frame(width: 350,height: 50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.gray, lineWidth: 5)
                        )
                        .padding(3)
                }.fullScreenCover(isPresented: $showYear) {
                    MainView()
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
