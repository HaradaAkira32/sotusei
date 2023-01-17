//
//  List.swift
//  demoApp
//
//  Created by cmStudent on 2022/12/23.
//

import Foundation

struct List: Hashable{
    var title : String
    var texts : [String]
}

extension List {
    static var lists: [List] {
        return [
            List(title: "基本情報", texts: ["IOS","Xcode"]),
            List(title: "基本情報", texts: ["andorid","AndoroidStudio"])
        ]
    }
}
