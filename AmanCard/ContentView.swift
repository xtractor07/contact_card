//
//  ContentView.swift
//  AmanCard
//
//  Created by Kumar Aman on 10/10/23.
//

import SwiftUI

let customFont = "Rajdhani-Medium"
struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Kumar Aman")
                    .font(Font.custom(customFont, size: 35))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(Font.custom(customFont, size: 20))
                Divider()
                
                DynamicButton(text: "+91 898xxx0229", imageName: "phone.fill")
                DynamicButton(text: "kaman@tekion.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DynamicButton: View {
    
    let text: String
    let imageName: String
    var body: some View {
        Rectangle()
            .frame(height: 40)
            .cornerRadius(20)
            .foregroundColor(Color.white)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(
                            Color(red: 0.09, green: 0.63, blue: 0.52))
                    Text(text)
                        .font(Font.custom(customFont, size: 20))
                        .foregroundColor(Color("Info Color"))
                }
            )
            .padding(.all)
    }
}
