//
//  AppDelegate.swift
//  Chicken Nuggets
//
//  Created by Christopher Fonseka on 14/02/2017.
//  Copyright © 2017 ChristopherFonseka. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification)
    {
        let restaurant = Restaurant()

        for nuggets in 40...70
        {
            guard let result = restaurant.buy(nuggets: nuggets) else
            {
                print("Cannot buy exactly \(nuggets) nuggets\n")
                continue
            }

            print("To buy \(nuggets) nuggets")
            print(result.log)
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

