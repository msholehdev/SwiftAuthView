//
//  VerifyOtpView.swift
//  SwiftAuthView
//
//  Created by muhamad sholeh on 26/08/22.
//

import Foundation
import SwiftUI

struct VerifyOtpView: View{
    
    @State var otp: String = ""
    let lightGreyColor = Color(red: 239/255, green: 243/255, blue: 244/255 , opacity: 1.0)
    
    
    var body: some View{
        NavigationView{
            ZStack{
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    VStack{
                        
                        Text("Verify OTP")
                            .font(.title)
                        
                        Text("Please enter 6 digit number sent to your phone.")
                            .font(.headline)
                            .multilineTextAlignment(.center)
                    }.padding()
                    
                    VStack(alignment: .leading){
                        Text("OTP Number")
                        TextField("OTP ...", text:$otp)
                            .padding()
                            .background(lightGreyColor)
                            .cornerRadius(5.0)
                            .autocapitalization(.none)
                        
                        //Send Button
                        HStack{
                            Spacer()
                            
                            Button(action: {
                                
                            }){
                                NavigationLink(destination: NewPasswordView()){
                                    Text("Verify")
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

struct  VerifyOtpView_Previews: PreviewProvider{
    static var previews: some View{
        VerifyOtpView()
    }
}
