//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by Baris Ciftci on 09/02/2023.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View: UI
 ViewModel - Manages Models for View
 
 */

@main
struct ToDoListAppApp: App {
    
    @State var listVieModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listVieModel)
        }
    }
}
