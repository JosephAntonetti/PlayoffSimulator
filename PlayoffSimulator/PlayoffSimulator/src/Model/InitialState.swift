//
//  InitialState.swift
//  PlayoffSimulator
//
//  Created by Joe Antonetti on 9/3/18.
//  Copyright © 2018 Joe Antonetti. All rights reserved.
//

import Foundation

func initializeTeamFromDictionary(teamDictionary: Dictionary<String, Any>) -> Team {
    let name = teamDictionary["name"] as! String
    let division = teamDictionary["division"] as! String
    return Team(id: 0, name: name, division: division, wins: 0, ties: 0, losses: 0)
}

func initializeTeams() -> [Team] {
    if let URL = Bundle.main.url(forResource: "Teams", withExtension: "plist") {
        if let teamsFromPlist = NSArray(contentsOf: URL) as? [Dictionary<String, Any>] {
            return teamsFromPlist.map{initializeTeamFromDictionary(teamDictionary: $0)}
        }
    }
    return [Team]()
}

func initializeState() -> AppState {
    let teams = initializeTeams()
    return AppState(teams:teams)
}

