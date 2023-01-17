//
//  EventBtn.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/09.
//

import SwiftUI

struct EventBtn: View {
    @Binding var selectEvent : Int
    
    //選択された時の色
    let selectColor = Color.orange.opacity(0.5)
    //選択されてない時の色
    let unselectColor = Color.gray.opacity(1)
    
    var body: some View {
        HStack{
            Button(action : {
                selectEvent = 0
            }){
                Text("すべて")
                    .frame(width: 120,height: 50)
                    .background(selectEvent == 0 ? selectColor : unselectColor)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
            Spacer()
            Button(action : {
                selectEvent = 1
            }){
                Text("文化祭")
                    .frame(width: 120,height: 50)
                    .background(selectEvent == 1 ? selectColor : unselectColor)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
            
            
            Spacer()
            Button(action : {
                selectEvent = 2
            }){
                Text("卒業制作")
                    .frame(width: 120,height: 50)
                    .background(selectEvent == 2 ? selectColor : unselectColor)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
            
            Spacer()
        }
    }
}
struct EventBtn_Previews: PreviewProvider {
    @State static var a = 0
    static var previews: some View {
        EventBtn(selectEvent: $a)
    }
}
