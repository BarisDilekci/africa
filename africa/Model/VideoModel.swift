//
//  VideoModel.swift
//  africa
//
//  Created by Barış Dilekçi on 29.06.2024.
//


import Foundation

struct Video: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  
  // Computed Property
  var thumbnail: String {
    "video-\(id)"
  }
}

