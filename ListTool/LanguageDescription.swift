//
//  ContentView.swift
//  ListTool
//
//  Created by Anthony RODRIGUES on 01/01/2023.
//

import SwiftUI

struct LanguageDescription: View {
    
    var language : Language
    @State var learnt = false
    
    var body: some View {
        VStack {
            Image(language.image)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text(language.name)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .padding(.all)
            Text(language.description)
            Spacer()
            Button(learnt ? "Appris" : "Apprendre"){
                learnt.toggle()
            }.buttonStyle(.borderedProminent)
                .tint(Color.red)
                .foregroundColor(Color.white)
                .padding()
        }
    }
}

struct LanguageDescription_Previews: PreviewProvider {
    static var previews: some View {
        LanguageDescription(language: Language.list[0])
    }
}
