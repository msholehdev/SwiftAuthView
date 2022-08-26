//
//  SignupView.swift
//  SwiftAuthView
//
//  Created by muhamad sholeh on 26/08/22.
//

import Foundation
import SwiftUI

struct SignupView: View{
    
    @State var username: String = ""
    @State var fullname: String = ""
    @State var password: String = ""
    @State var confirmpassword: String = ""
    @State private var checked = false
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let lightGreyColor = Color(red: 239/255, green: 243/255, blue: 244/255 , opacity: 1.0)
    let customGrey = Color(red: 80/255, green: 80/255, blue: 80/255 , opacity: 1)
    
    
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
                            
                            Text("Sign Up")
                                .font(.title)
                        }
                        
                        VStack(alignment: .leading){
                            //Email
                            Text("Email")
                            
                            TextField("Email ...", text: $username)
                                .padding()
                                .background(lightGreyColor)
                                .cornerRadius(5.0)
                                .keyboardType(.emailAddress)
                                .autocapitalization(.none)
                            
                            //Fullname
                            Text("Fullname")
                            TextField("Fullname ...", text: $fullname)
                                .padding()
                                .background(lightGreyColor)
                                .cornerRadius(5.0)
                                .autocapitalization(.none)
                            
                            //Password
                            Text("Password")
                            SecureField("Password ...", text: $password)
                                .padding()
                                .background(lightGreyColor)
                                .cornerRadius(5.0)
                                .keyboardType(.emailAddress)
                                .autocapitalization(.none)
                            
                            //Confirm Password
                            Text("Confirm Password")
                            SecureField("Confirm Password ...", text: $confirmpassword)
                                .padding()
                                .background(lightGreyColor)
                                .cornerRadius(5.0)
                                .autocapitalization(.none)
                            
                            //Agree
                            HStack(alignment: .firstTextBaseline){
                                CheckBoxView(checked: $checked)
                                NavigationLink(destination: TermServiceView()){
                                    Text("Agree to Term & Service")
                                }
                                Spacer()
                            }
                            
                            //Sign Up Button
                            HStack{
                                Spacer()
                                
                                Button(action: {}){
                                    Text("Sign Up")
                                        .bold()
                                        .font(.callout)
                                        .foregroundColor(.white)
                                }
                                .disabled(!checked)
                                .padding()
                                .background(checked ? Color.blue : customGrey )
                                .cornerRadius(50)
                                
                                Spacer()
                            }
                            .padding([.leading,.trailing],20)
                            
                            
         
                        }
                        .padding([.leading,.trailing],20)
                        
                        //Sign In Button
                        HStack{
                            Text("Already have an account?")
                                .bold()
                                .font(.callout)
                                .foregroundColor(.black)
                            Spacer()
                            Button(action:{
                                self.presentationMode.wrappedValue.dismiss()
                            }){
                                Text("Sign In")
                                    .bold()
                                    
                            }
                           
                        }.padding([.leading,.trailing],20)
                    }
                }
                Spacer()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
    }
}

struct SignupView_Previews: PreviewProvider{
    static var previews: some View{
        SignupView()
    }
}
