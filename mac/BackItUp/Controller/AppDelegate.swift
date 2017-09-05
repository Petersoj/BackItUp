//
//  AppDelegate.swift
//  BackItUp
//
//  Created by Jacob Peterson on 8/30/17.
//  Copyright © 2017 Jacob Peterson. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    
    var settingsWindowController: NSWindowController?
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let settingsStoryBoard = NSStoryboard(name: "Settings", bundle: nil)
        
        settingsWindowController = settingsStoryBoard.instantiateInitialController() as? NSWindowController
        settingsWindowController?.showWindow(self)
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}

