//
//  ReusableViews.swift
//  Hirely
//
//  Created by Jolie Ip  on 27/11/2020.
//

import SwiftUI

struct CustomRoundedRectangle: View {
   
    var body: some View {
        Button(action: {
            print("Button tapped")
        }) {
            Image(systemName: "heart.fill")
               
        }
        .buttonStyle(RectangleButtonStyle()).frame(width: 240, height: 80)
        
    }
}



struct RectangleButtonStyle: ButtonStyle {

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(20)
            .contentShape(Rectangle())
            .background(
                Group {
                        if configuration.isPressed {
                        RoundedRectangle(cornerRadius: 20)
                        .fill(Color.offWhite)
                        .frame(width: 240, height: 80)
                       
                        .overlay(
                           RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 4)
                                .blur(radius: 4)
                                .offset(x: 2, y: 2)
                                .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(Color.black, Color.clear)).frame(width: 240, height: 80))
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white, lineWidth: 8)
                                .blur(radius: 4)
                                .offset(x: -2, y: -2)
                                .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(Color.clear, Color.black)).frame(width: 240, height: 80)))
                        
                    }
                    else {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.offWhite)
                            .frame(width: 240, height: 80)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    }
                    
                }
        )
        
    }
}

struct RectangleButtonCard: ButtonStyle {

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(20)
            .contentShape(Rectangle())
            .background(
                Group {
                        if configuration.isPressed {
                        RoundedRectangle(cornerRadius: 20)
                        .fill(Color.offWhite)
                        .frame(width: 100, height: 100)
                       
                        .overlay(
                           RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 4)
                                .blur(radius: 4)
                                .offset(x: 2, y: 2)
                                .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(Color.black, Color.clear)).frame(width: 100, height: 100))
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white, lineWidth: 8)
                                .blur(radius: 4)
                                .offset(x: -2, y: -2)
                                .mask(RoundedRectangle(cornerRadius: 20).fill(LinearGradient(Color.clear, Color.black)).frame(width: 100, height: 100)))
                        
                    }
                    else {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.offWhite)
                            .frame(width: 100, height: 100)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    }
                    
                }
        )
        
    }
}

struct CircleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(30)
            .contentShape(Circle())
                .background(
                    Group {
                         if configuration.isPressed {
                            Circle()
                                .fill(Color.offWhite)
                                .overlay(
                                    Circle()
                                        .stroke(Color.gray, lineWidth: 4)
                                        .blur(radius: 4)
                                        .offset(x: 2, y: 2)
                                        .mask(Circle().fill(LinearGradient(Color.black, Color.clear)))
                                )
                                .overlay(
                                    Circle()
                                        .stroke(Color.white, lineWidth: 8)
                                        .blur(radius: 4)
                                        .offset(x: -2, y: -2)
                                        .mask(Circle().fill(LinearGradient(Color.clear, Color.black)))
                                )
                         } else {
                             Circle()
                                 .fill(Color.offWhite)
                                 .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                                 .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                         }
                     }
                )
    }
}

struct RoundButton: View {
    var body: some View {
    Button(action: {
        print("Button tapped")
    }) {
        Image(systemName: "heart.fill")
            .foregroundColor(.gray)
    }
    .buttonStyle(CircleButtonStyle())
    }
}


extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}
