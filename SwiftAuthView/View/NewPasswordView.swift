//
//  NewPasswordView.swift
//  SwiftAuthView
//
//  Created by muhamad sholeh on 26/08/22.
//

import Foundation
import SwiftUI

struct NewPasswordView: View{
    @State var password: String = ""
    @State var confirmpassword: String = ""
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let lightGreyColor = Color(red: 239/255, green: 243/255, blue: 244/255 , opacity: 1.0)
    
    var body: some View{
        NavigationView{
            ZStack{
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    VStack{
                        
                        Text("New Password")
                            .font(.title)
                        
                        Text("Please enter your new password.")
                            .font(.headline)
                            .multilineTextAlignment(.center)
                    }.padding()
                    
                    VStack(alignment: .leading){
                        Text("New Password")
                        SecureField("Password ...", text:$password)
                            .padding()
                            .background(lightGreyColor)
                            .cornerRadius(5.0)
                            .autocapitalization(.none)
                        
                        Text("Confirm Password")
                        SecureField("Confirm Password ...", text:$confirmpassword)
                            .padding()
                            .background(lightGreyColor)
                            .cornerRadius(5.0)
                            .autocapitalization(.none)
                        
                        //Send Button
                        HStack{
                            Spacer()
                            
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }){
                                NavigationLink(destination: LoginView()){
                                    Text("Create New Password")
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

struct NewPasswordView_Previews: PreviewProvider{
    static var previews: some View{
        NewPasswordView()
    }
}
