//
//  ContentView.swift
//  Sheet
//
//  Created by rawan alamirah on 1/7/21.
//

import SwiftUI

struct ContentView: View {
    @State var name: String
    @State var age: String
    @State var phone: String
    @State var isMentor = false
    
    var body: some View {
        
        VStack {
            Text("مرحباً بك في الكويت تبرمج!")
                .padding(.bottom, 50)
                .foregroundColor(.blue)
                .font(.title)
            Button(action: {
                isMentor.toggle()
            }){
                Text("أدخل بياناتك")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue.opacity(0.7))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
   
            }.sheet(isPresented: $isMentor) {
                SecondPage(name: $name, age: $age, phone: $phone)
            }
            if name != "" {
                HStack{
                    Spacer()
                    VStack(alignment: .trailing, spacing: 10){
                        Text(" الاسم: \(name)")
                        Text(" العمر: \(age)")
                        Text(" الهاتف: \(phone)")
                    }.font(.title)
                    .padding()
                        
                    }
            }        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(name: "", age: "", phone: "")
    }
}
