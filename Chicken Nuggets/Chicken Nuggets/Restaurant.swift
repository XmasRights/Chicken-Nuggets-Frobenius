//
//  Restaurant.swift
//  Chicken Nuggets
//
//  Created by Christopher Fonseka on 14/02/2017.
//  Copyright © 2017 ChristopherFonseka. All rights reserved.
//

import Foundation
import SearchTreeKit

typealias Nuggets = SearchNode<Int>

struct Restaurant
{
    func buy(nuggets: Int) -> Nuggets?
    {
        precondition(nuggets >= 0)
        return SearchTreeKit.breadthFirstSearch(start: Nuggets(0), actions: actions(), end: end(nuggets: nuggets))
    }

    private func actions() -> [(Nuggets)->Nuggets?]
    {
        func buy(_ nuggets: Int, _ n: Nuggets) -> Nuggets?
        {
            let description = "Buy \(nuggets) nuggets (\(n.value + nuggets))\n"
            return Nuggets(n.value + nuggets, log: n.log + description)
        }

        let buySix    = { (n: Nuggets) in return buy(6,  n) }
        let buyNine   = { (n: Nuggets) in return buy(9,  n) }
        let buyTwenty = { (n: Nuggets) in return buy(20, n) }

        return [buySix, buyNine, buyTwenty]
    }

    private func end (nuggets: Int) -> (Nuggets) -> SearchTreeKit.Result
    {
        return { (n: Nuggets) -> SearchTreeKit.Result in
            switch n.value
            {
            case _ where n.value == nuggets: return .Pass
            case _ where n.value >  nuggets: return .Fail
            default:                         return .Continue
            }
        }
    }
}
