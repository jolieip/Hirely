//
//  signupview.swift
//  Hirely
//
//  Created by Jolie Ip  on 30/11/2020.
//

import SwiftUI

struct SignUpView: View {
    @Binding var fullname: String
    @Binding var email: String
    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            Text("Register an account")
                .bold()
                .font(.headline)
            
            VStack{
            Text("Full name")
                .bold()
                .font(.subheadline)
            
            TextField("Enter your first and last name", text: $fullname)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(20)
                
                
            }
            
            VStack{
            Text("Email")
                .bold()
                .font(.subheadline)
            
            TextField("Enter your email", text: $email)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(20)
                
                
            }
            
        }
    }
}


