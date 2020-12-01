//
//  DiscoverView.swift
//  Hirely
//
//  Created by Jolie Ip  on 27/11/2020.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        ScrollView  {
                   Color.offWhite
                   HStack (spacing: 10)
                   {
                   Text("Discover").font(.system(size: 30, weight: .regular, design: .rounded))
                   }.padding(.bottom, 15)
                  
                   VStack (spacing: 10){
                       HStack{
                       Button(action: {
                           print("Button tapped")
                       }) {
                          Text("Category")
                              }
                       .buttonStyle(RectangleButtonCard())
                       
                       Button(action: {
                           print("Button tapped")
                       }) {
                           Text("Category")
                              }
                       .buttonStyle(RectangleButtonCard())
                      
                   }
                   }.padding(.bottom, 50)
                       
                       VStack (spacing: 15){
                           HStack{
                           Button(action: {
                               print("Button tapped")
                           }) {
                              Text("Category")
                                  }
                           .buttonStyle(RectangleButtonCard())
                           
                           Button(action: {
                               print("Button tapped")
                           }) {
                               Text("Category")
                                  }
                           .buttonStyle(RectangleButtonCard())
                          
                       }
                      
                   }.padding(.bottom, 30)
               
           
                   VStack (spacing: 10){
                       Text("Suggested").font(.system(size: 30, weight: .regular, design: .rounded))
                           CustomRoundedRectangle()
                           CustomRoundedRectangle()
                           CustomRoundedRectangle()
                           CustomRoundedRectangle()
                       }
                           }
                           .edgesIgnoringSafeArea(.all)
               }
               
    }


struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
