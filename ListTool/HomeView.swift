//
//  HomeView.swift
//  ListTool
//
//  Created by Anthony RODRIGUES on 01/01/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationView{
            List(Language.list, id:\.id){
                language in LanguageItemView(language: language)
                    .overlay(NavigationLink(destination: LanguageDescriptionView(language: language), label: { EmptyView() }).opacity(0)
                    ).listRowSeparator(.hidden)
                
            }
        }.listStyle(PlainListStyle())
            .navigationTitle("Languages")
    }
}

struct LanguageItemView: View {
    let language : Language
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(8)
            HStack{
                image
                Spacer()
                info
            }.padding()
        }.shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y:2)
    }
}
private extension LanguageItemView {
    var image : some View {
        Image(language.image)
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
            .padding(.horizontal)
    }
    
    var info : some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(language.name)
                .font(.headline)
                .lineLimit(2)
                .frame(minWidth:0, maxWidth: .infinity, alignment: .leading)


            Text(language.description)
                .font(.subheadline)
                .lineLimit(2)
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
