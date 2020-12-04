//
//  ContentView.swift
//  Hirely
//
//  Created by Jolie Ip  on 27/11/2020.
//

import SwiftUI

struct ContentView: View {
   @State var taskname: String
   @State var fullname: String
   @State var email: String
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
            
            SignUpView(fullname: $fullname, email: $email )
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Settings")
                }.tag(2)
                        
        }
    }
}



