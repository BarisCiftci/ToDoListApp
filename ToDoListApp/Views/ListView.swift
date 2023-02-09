//
//  ListView.swift
//  ToDoListApp
//
//  Created by Baris Ciftci on 09/02/2023.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "this is the first title",
        "this is the second title",
        "this is the third title"
    
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Todo List App")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


