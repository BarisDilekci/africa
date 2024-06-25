//
//  AnimalsModel.swift
//  africa
//
//  Created by Barış Dilekçi on 26.06.2024.
//

import SwiftUI

struct AnimalsModel : Codable, Identifiable {
    let id : String
    let name : String
    let headline : String
    let description : String
    let link : String
    let image : String
    let gallery : [String]
    let fact : [String]
}
