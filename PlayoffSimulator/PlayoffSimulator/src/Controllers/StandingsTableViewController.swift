//
//  StandingsTableViewController.swift
//  PlayoffSimulator
//
//  Created by Joe Antonetti on 9/3/18.
//  Copyright © 2018 Joe Antonetti. All rights reserved.
//

import Foundation
import UIKit

class TeamStandingCell: UITableViewCell {
    @IBOutlet weak var ranking: UILabel!
    @IBOutlet weak var teamName: UILabel!
    
}

class StandingsTableViewController:UITableViewController {
    
    func getTeamsArray() -> [Team] {
        return mainStore.observable.value.teams
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return getDivisions(teams: mainStore.observable.value.teams).count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let divisions = getDivisions(teams: getTeamsArray())
        let teamsInDivision = getTeamsInDivision(teams: getTeamsArray(), division: divisions[section])
        return teamsInDivision.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let divisions = getDivisions(teams: getTeamsArray())
        return divisions[section]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamStandingCell", for: indexPath) as! TeamStandingCell
        let teams = getTeamsArray()
        let division = getDivisions(teams: teams)[indexPath.section]
        let currentTeam = getTeamByDivisionRanking(teams: teams, division: division, ranking: indexPath.row)
        cell.teamName?.text = currentTeam.name
        cell.ranking?.text = String((indexPath.row + 1)) + ")"
        return cell
    }
}
