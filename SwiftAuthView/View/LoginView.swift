//
//  LoginView.swift
//  SwiftAuthView
//
//  Created by muhamad sholeh on 26/08/22.
//

import Foundation
import SwiftUI

struct LoginView: View{
    
    @State var username: String = ""
    @State var password: String = ""
    
    let lightGreyColor = Color(red: 239/255, green: 243/255, blue: 244/255 , opacity: 1.0)
    
    var body: some View{
        NavigationView{
            ScrollView{
                ZStack{
                    Color.white
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack{
                        VStack{
                            Image(systemName: "hexagon.fill")
                                .resizable()
                                .frame(width: 100, height: 100, alignment: .center)
                                .aspectRatio(contentMode: .fit)
                            
                            Text("Swift Auth View")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            
                            Text("Sign In")
                                .font(.title)
                        }
                    
                    
                        VStack(alignment: .leading){
                            //Username
                            Text("Username / email Address")
                            TextField("Username ...", text:$username)
                                .padding()
                                .background(lightGreyColor)
                                .cornerRadius(5.0)
                                .keyboardType(.emailAddress)
                                .autocapitalization(.none)
                            
                            //Password
                            Text("Password")
                            SecureField("Password ...", text: $password)
                                .padding()
                                .background(lightGreyColor)
                                .cornerRadius(5.0)
                                .autocapitalization(.none)
                            
                            // Forgot Password
                            HStack{
                                NavigationLink(destination: ForgotPasswordView()){
                                    Text("Forgot Password")
                                }
                                Spacer()
                            }.padding([.top,.bottom],10)
                            
                            //Sign In Button
                            HStack{
                                Spacer()
                                
                                Button(action: {}){
                                    Text("Sign In")
                                        .bold()
                                        .font(.callout)
                                        .foregroundColor(.white)
                                }
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(50)
                                
                                Spacer()
                            }
                            .padding()
                            
                            //Privacy Policy
                            HStack{
                                Spacer()
                                NavigationLink(destination: PrivacyView()){
                                    Text("Our Privacy Policy")
                                        .bold()
                                        .font(.callout)
                                        .foregroundColor(.blue)
                                }
                                Spacer()
                            }
                            
                            //Register Button
                            HStack{
                                Text("Don't have an account?")
                                    .bold()
                                    .font(.callout)
                                    .foregroundColor(.black)
                                Spacer()
                                NavigationLink(destination: SignupView()){
                                    Text("Sign Up")
                                        .bold()
                                        .font(.callout)
                                        .foregroundColor(.blue)
                                }
                               
                            }.padding()
                        }
                        .padding(20)
                        
                        Spacer()
                    }
                
                }
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationTitle("")
    }
}

struct LoginView_Previews: PreviewProvider{
    static var previews: some View{
        LoginView()
    }
}
