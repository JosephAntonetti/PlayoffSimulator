//
//  StandingsTableViewController.swift
//  PlayoffSimulator
//
//  Created by Joe Antonetti on 9/3/18.
//  Copyright © 2018 Joe Antonetti. All rights reserved.
//

import Foundation
import UIKit

class StandingsTableViewController:UITableViewController {
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return mainStore.observable.value.divisions.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return mainStore.observable.value.divisions[section].teams.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return mainStore.observable.value.divisions[section].name
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamStandingCell", for: indexPath)
        return cell
    }
}
