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
    let division: String
    let wins: Int
    let ties: Int
    let losses: Int
}

struct AppState {
    let teams: [Team]
}
