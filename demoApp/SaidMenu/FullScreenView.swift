//
//  FullScreenView..swift
//  demoApp
//
//  Created by cmStudent on 2022/12/08.
//

import SwiftUI

struct FullScreenView: View {
    
    @Environment(\.presentationMode) var presentation
    
    let fruits = ["2021","2022","2023","2024","2025"]
    var body: some View {
        HStack{
            VStack {
                Button(action:{
                    presentation.wrappedValue.dismiss()
                }){
                    Image(systemName: "chevron.backward")
                        .padding()
                        .font(.system(size: 30))
                        .padding()
                }
                Spacer()
                
                NavigationView {
                    List {
                        ForEach(0 ..< fruits.count) { index in
                            NavigationLink(destination: Text(fruits[index])) {
                                Text(fruits[index])
                            }
                        }
                        
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
