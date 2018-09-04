//
//  DivisionFunctions.swift
//  PlayoffSimulator
//
//  Created by Joe Antonetti on 9/3/18.
//  Copyright © 2018 Joe Antonetti. All rights reserved.
//

import Foundation

func getDivisions(teams: [Team]) -> [String] {
    return teams.reduce([], {$0.contains($1.division) ? $0 : $0 + [$1.division]}).sorted(by: {$0 < $1})
}

func getTeamsInDivision(teams: [Team], division: String) -> [Team] {
    return teams.reduce([], {$1.division == division ? $0 + [$1] : $0}).sorted(by: {$0.wins > $1.wins})
}

func getTeamByDivisionRanking(teams: [Team], division: String, ranking: Int) -> Team {
    let teamsInDivision = getTeamsInDivision(teams: teams, division: division)
    return teamsInDivision[ranking]
}
