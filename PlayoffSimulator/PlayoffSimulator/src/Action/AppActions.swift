//
//  AppActions.swift
//  PlayoffSimulator
//
//  Created by Joe Antonetti on 9/3/18.
//  Copyright © 2018 Joe Antonetti. All rights reserved.
//

import Foundation
import ReactiveReSwift

//
// All of the actions which can be taken by this application
//

enum AppAction: Action {
    case DummyAction
}

//
// The reducer itself
//

let reducer: Reducer<AppState> = { action, state in
    switch action as? AppAction {
    default:
        return state
    }
}
