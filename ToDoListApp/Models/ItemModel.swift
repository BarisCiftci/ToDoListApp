//
//  ItemModel.swift
//  ToDoListApp
//
//  Created by Baris Ciftci on 12/02/2023.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
