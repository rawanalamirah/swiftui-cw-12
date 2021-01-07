//
//  SecondPage.swift
//  Sheet
//
//  Created by rawan alamirah on 1/7/21.
//

import SwiftUI

struct SecondPage: View {
    @Binding var name: String
    @Binding var age: String
    @Binding var phone: String
    @Environment(\.presentationMode) var presentaiton
    var body: some View {
        VStack (alignment: .center, spacing: 40){
            VStack{
                TextField("الإسم", text: $name)
                TextField("العمر", text: $age)
                TextField("الهاتف", text: $phone)
            }.padding()
            .font(.title)
            multilineTextAlignment(.trailing)
            
            Button( action: {
                presentaiton.wrappedValue.dismiss()
            })
                {
                Text("موافق")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue.opacity(0.7))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }
            
        }
    }
}

struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage(name: <#Binding<String>#>, age: <#Binding<String>#>, phone: <#Binding<String>#>)
    }
}
