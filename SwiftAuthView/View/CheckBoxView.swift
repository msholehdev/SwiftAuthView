//
//  CheckBoxView.swift
//  SwiftAuthView
//
//  Created by muhamad sholeh on 26/08/22.
//

import Foundation

import SwiftUI

struct CheckBoxView: View{
    
    @Binding var checked: Bool
    
    var body: some View {
        Image(systemName: checked ? "checkmark.square.fill" : "square")
            .foregroundColor(checked ? Color(UIColor.systemBlue) : Color.secondary)
            .onTapGesture{
                self.checked.toggle()
            }
    }
}

struct CheckBoxView_Previews: PreviewProvider{
    struct CheckBoxViewHolder: View {
        @State var checked = false
        
        var body: some View{
            CheckBoxView(checked: $checked)
        }
    }
    
    static var previews: some View{
        CheckBoxViewHolder()
    }
}
