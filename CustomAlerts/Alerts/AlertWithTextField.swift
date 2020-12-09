//
//  AlertWithTextField.swift
//  CustomAlerts
//
//  Created by Umer Khan on 29/11/2020.
//

import SwiftUI

struct AlertWithTextField: View {
    
    @Binding var showingAlert: Bool
    @Binding var text: String
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 300, height: 250)
            VStack {
                Spacer()
                Text("Message")
                    .font(.headline)
                    .foregroundColor(.black)
                
                Text("Please type message here...")
                    .padding()
                    .font(.caption)
                    .foregroundColor(.black)
                TextField("Placeholder", text: $text)
                
                Divider()
                    .padding([.leading, .trailing], 10)
                
                Spacer()
                
                Button(action: {
                    showingAlert = false
                }, label: {
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 12)
                            .frame(width: 180, height: 40)
                        Text("Dismiss")
                            .foregroundColor(.white)
                    }.foregroundColor(.blue)
                })
                Spacer()
            }
            
        }
        .foregroundColor(.white)
        .frame(width: 300, height: 260)
        .shadow(radius: 5)
        .transition(
            AnyTransition
                .scale(scale: 1.3)
                .combined(with: .opacity)
                .animation(
                    .easeInOut(duration: 0.15)
                )
        )
    }

}

struct AlertWithTextField_Previews: PreviewProvider {
    static var previews: some View {
        AlertWithTextField(showingAlert: .constant(false), text: .constant("Message"))
    }
}
