//
//  Todo.swift
//  TodoList
//
//  Created by Proctor  on 18/06/2024.
//

import Foundation

struct Devices{
    let title:String
    let isDeviceOn: Bool
    init(title:String , isDeviceOn:Bool = false){
        self.title = title
        self.isDeviceOn = isDeviceOn
    }
}
