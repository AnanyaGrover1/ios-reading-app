//
//  Book.swift
//  ReadwellAlpha
//
//  Created by Ananya Grover on 1/3/22.
//

import Foundation

struct Book: Identifiable, Codable, Hashable {
    var id: Int
    var name: String
    var author: String
    var bookArtString: String
    var publishDate: String
    var Description: String
    var isFavorite: Bool
    var category: Category
       enum Category: String, CaseIterable, Codable {
           // sample genres
           case fantasy = "Fantasy"
           case horror = "Horror"
           case fables = "Fables"
       }
    
}

let booklist: [Book] = [
    .init(id: 1, name: "The King of the Golden River", author: "John Ruskin", bookArtString: "king-river", publishDate:"October, 1996", Description: "The King of the Golden River or The Black Brothers: A Legend of Stiria is a fantasy story originally written in 1841 by John Ruskin for the twelve-year-old Effie Gray, whom Ruskin later married. It was published in book form in 1851, and became an early Victorian classic which sold out three editions.", isFavorite: true, category: .fables),
    .init(id: 2, name: "The Necklace of Princess Fiorimonde", author: "Mary De Morgan", bookArtString: "necklace-princess", publishDate: "1880", Description: "The Necklace of Princess Fiorimonde is a fairy tale written by Mary de Morgan in her collection of short stories called \"The Necklace of Princess Fiorimonde and Other Stories.\" This collection of fairy tales originally published in 1880. Mary de Morgan helped to make the Victorian era prominent in literature.", isFavorite: false, category: .horror),
    .init(id: 3, name: "The King of the Golden River", author: "John Ruskin", bookArtString: "king-river-1", publishDate:"October, 1996", Description: "The King of the Golden River or The Black Brothers: A Legend of Stiria is a fantasy story originally written in 1841 by John Ruskin for the twelve-year-old Effie Gray, whom Ruskin later married. It was published in book form in 1851, and became an early Victorian classic which sold out three editions.", isFavorite: false, category: .horror),
    .init(id: 4, name: "The Necklace of Princess Fiorimonde and Other Stories", author: "Mary De Morgan", bookArtString: "princess-fiorimonde", publishDate: "1880", Description: "The Necklace of Princess Fiorimonde is a fairy tale written by Mary de Morgan in her collection of short stories called \"The Necklace of Princess Fiorimonde and Other Stories.\" This collection of fairy tales originally published in 1880. Mary de Morgan helped to make the Victorian era prominent in literature.", isFavorite: true, category: .fables)
]
