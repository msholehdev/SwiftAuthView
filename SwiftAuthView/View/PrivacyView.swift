//
//  PrivacyView.swift
//  SwiftAuthView
//
//  Created by muhamad sholeh on 26/08/22.
//

import Foundation
import SwiftUI

struct PrivacyView: View{
    var body: some View{
        NavigationView{
            ZStack{
                Color.white
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    VStack{
                        Text("Privacy")
                            .font(.title)
                            .padding()
                        
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                            .font(.subheadline)
                            .multilineTextAlignment(.center)
                    }.padding()
                    Spacer()
                }
            }
        }
    }
}

struct PrivacyView_Previews: PreviewProvider{
    
    static var previews: some View{
        PrivacyView()
    }
}
