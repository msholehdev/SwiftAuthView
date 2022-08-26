//
//  ForgotPasswordView.swift
//  SwiftAuthView
//
//  Created by muhamad sholeh on 26/08/22.
//

import Foundation
import SwiftUI

struct ForgotPasswordView: View{
    
    @State var phone: String = ""
    @State var isLinkActive = false
    let lightGreyColor = Color(red: 239/255, green: 243/255, blue: 244/255 , opacity: 1.0)
    
    var body: some View{
        NavigationView{
            ZStack{
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    VStack{
                        
                        Text("Forgot Password")
                            .font(.title)
                        
                        Text("Please enter your phone number to receive an OTP Number.")
                            .font(.headline)
                            .multilineTextAlignment(.center)
                    }.padding()
                    
                    VStack(alignment: .leading){
                        Text("Phone")
                        TextField("Phone ...", text:$phone)
                            .padding()
                            .background(lightGreyColor)
                            .cornerRadius(5.0)
                            .autocapitalization(.none)
                        
                        //Send Button
                        HStack{
                            Spacer()
                            
                            Button(action: {
                                self.isLinkActive = true
                            }){
                                NavigationLink(destination: VerifyOtpView()){
                                    Text("Send")
                                        .bold()
                                        .font(.callout)
                                        .foregroundColor(Color.white)
                                }
                            }
                            .padding()
                            .background(.blue)
                            .cornerRadius(50)
                            .padding(20)
                            
                            Spacer()
                        }
                        
                    }
                    .padding(20)
                    Spacer()
                }
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .navigationTitle("")
    }
}

struct ForgotPasswordView_Previews: PreviewProvider{
    static var previews: some View{
        ForgotPasswordView()
    }
}
