//
//  SignupView.swift
//  LoginSwiftUI
//
//  Created by Giresh Dora on 14/06/20.
//  Copyright © 2020 Giresh. All rights reserved.
//

import SwiftUI

struct SignupView: View {
    
    @State var email = ""
    @State var password = ""
    @State var rePassword = ""
    @Binding var index: Int
    
    var body: some View{
        
        ZStack(alignment: .bottom){
            
            VStack{
                
                HStack{
                    Spacer()
                    
                    VStack(spacing: 10){
                        
                        Text("SignUp")
                            .foregroundColor(self.index == 1 ? .white : .gray)
                        .font(.title)
                        .fontWeight(.bold)
                        
                        Capsule()
                            .fill(self.index == 1 ? Color.blue : Color.clear)
                        .frame(width: 100, height: 5)
                    }
                    
                    
                }
                .padding(.top, 30)
                
                VStack{
                    
                    HStack{
                        
                        Image(systemName: "envelope.fill")
                            .foregroundColor(Color("Color1"))
                        
                        TextField("Email Address", text: self.$email)
                        
                    }
                    
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack{
                    
                    HStack{
                        
                        Image(systemName: "eye.slash")
                            .foregroundColor(Color("Color1"))
                        
                        SecureField("Password", text: self.$password)
                        
                    }
                    
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                VStack{
                    
                    HStack{
                        
                        Image(systemName: "eye.slash")
                            .foregroundColor(Color("Color1"))
                        
                        SecureField("Password", text: self.$rePassword)
                        
                    }
                    
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
            }
            .padding()
            .padding(.bottom, 65)
            .background(Color("Color2"))
            .clipShape(LeftCurveShape())
        .contentShape(LeftCurveShape())
            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: -5)
            .onTapGesture {
                self.index = 1
            }
            .cornerRadius(35)
            .padding(.horizontal,20)
            
            
            Button(action: {
                
            }) {
                Text("SIGNUP")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(Color("Color1"))
                .clipShape(Capsule())
                    .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
                
            }
            .offset(y:25)
            .opacity(self.index == 1 ? 1 : 0)
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView(index: .constant(1))
    }
}
