//
//  ContentView.swift
//  Hirely
//
//  Created by Jolie Ip  on 27/11/2020.
//

import SwiftUI

struct ContentView: View {
   @State var taskname: String
    var body: some View {
        TabView{
            
            DiscoverView()
                .tabItem {
                    
                    Image(systemName: "house.fill")
                    Text("Home")
                }.tag(0)
                        
            TaskView(taskname: $taskname)
                .tabItem {
                    
                         Image(systemName: "hammer.fill")
                         Text("Task")
                }.tag(1)
                           
            SettingsView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Settings")
                }.tag(2)
                        
        }
    }
}



