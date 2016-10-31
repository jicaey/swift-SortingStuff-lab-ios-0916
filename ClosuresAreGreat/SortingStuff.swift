//
//  SortingStuff.swift
//  ClosuresAreGreat
//
//  Created by Ron Don Volante on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


struct ToyBin {
    
    var ships: [Ship] = []
    var books: [Book] = []
    var bowlingPins: [BowlingPin] = []
    var musicCDs: [MusicCD] = []
    
    mutating func sortShips() {
        let sortedShips = ships.sorted { $0.age < $1.age }
        ships = sortedShips
    }
    
    mutating func sortBooks() {
        let sortedBooks = books.sorted { $0.name < $1.name }
        books = sortedBooks
    }
    
    mutating func sortBowlingPins() {
        bowlingPins = bowlingPins.sorted { $0.color.rawValue < $1.color.rawValue }
    }
    
    mutating func sortMusicCDs() {
        musicCDs = musicCDs.sorted { $0.name < $1.name }
        for (index, music) in musicCDs.enumerated() {
            if music.name == "Drake" {
                musicCDs.remove(at: index)
                musicCDs.insert(music, at: 0)
            }
        }
    }
    
    mutating func changeColorOfAllPins(to color: Color) {
        bowlingPins.map { $0.color = color }
}


struct Ship {
    var name: String
    var age: Int
}


struct Book {
    var name: String
    var year: Int
    var author: String
}


struct BowlingPin {
    var name: String
    var film: String
    var color: Color
}


extension BowlingPin {
    mutating func changeColor(to color: Color) {
        self.color = color
    }
}


enum Color: Int {
    case red, organe, yellow, green, blue, indigo, violet
}

struct MusicCD {
    var name: String
    var year: Int
    var songs: [String]
}
