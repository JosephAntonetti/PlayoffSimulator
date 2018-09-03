//
//  StandingsDataModels.swift
//  PlayoffSimulator
//
//  Created by Joe Antonetti on 9/3/18.
//  Copyright © 2018 Joe Antonetti. All rights reserved.
//

import Foundation

struct Team {
    let id: Int
    let name: String
    let wins: Int
    let ties: Int
    let losses: Int
}

struct Division {
    let id: Int
    let name: String
    let teams: [Int]
}

struct AppState {
    let teams: [Team]
    let divisions: [Division]
}
