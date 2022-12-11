//
//  SearchResponse.swift
//  MyMusic
//
//  Created by Вячеслав Терентьев on 11.12.2022.
//

import Foundation

struct SearchResponse: Decodable {
    var resultCount: Int
    var results: [Track]
}

struct Track: Decodable {
    var trackName: String
    var collectionName: String?
    var artistName: String
    var artworkUrl100: String?
}
