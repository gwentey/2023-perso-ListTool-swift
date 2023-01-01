//
//  Language.swift
//  ListTool
//
//  Created by Anthony RODRIGUES on 01/01/2023.
//

import Foundation

struct Language : Identifiable {
    let id = UUID()
    
    let name : String
    let description : String
    let image : String
    
}

extension Language {
    static let list : [Language] = [
        Language(name:"Kotlin", description:"Language de programmation Android", image:"kotlin"),
        Language(name:"Swift", description:"Language de programmation iOS", image:"swift"),
        Language(name:"Dart", description:"Language de programmation platforme", image:"dart")
    ]
}
