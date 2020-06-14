//
//  ContentView.swift
//  LoginSwiftUI
//
//  Created by Giresh Dora on 14/06/20.
//  Copyright © 2020 Giresh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
            .preferredColorScheme(.dark)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    
    @State var index = 0
    
    var body: some View{
        
        GeometryReader{_ in
            VStack{
                
                Image("logo")
                    .resizable()
                    .frame(width: 60, height: 60)
                
                //LoginView()
                
                ZStack{
                    SignupView(index: self.$index)
                        .zIndex(Double(self.index))
                    
                    LoginView(index: self.$index)
                }
                
                HStack(spacing: 15){
                    
                    Rectangle()
                        .fill(Color("Color1"))
                    .frame(height: 1)
                    
                    Text("OR")
                    
                    Rectangle()
                        .fill(Color("Color1"))
                    .frame(height: 1)
                }
                .padding(.horizontal, 20)
                .padding(.top, 50)
                
                HStack(spacing: 15){
                    
                    Button(action: {
                        
                    }) {
                        Image("apple")
                        .resizable()
                            .renderingMode(.original)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    }
                    
                    Button(action: {
                        
                    }) {
                        Image("fb")
                        .resizable()
                            .renderingMode(.original)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    }
                    
                    
                    Button(action: {
                        
                    }) {
                        Image("twitter")
                        .resizable()
                            .renderingMode(.original)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    }
                }
                .padding(.top, 30)
                
            }
            .padding(.vertical)
        }
        .background(Color("Color").edgesIgnoringSafeArea(.all))
        
    }
}





