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
        settingsWindowController?.window?.standardWindowButton(.miniaturizeButton)?.isEnabled = false
        settingsWindowController?.window?.standardWindowButton(.zoomButton)?.isEnabled = false
        settingsWindowController?.window?.makeKeyAndOrderFront(self)
    }
    
    func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        settingsWindowController?.window?.makeKeyAndOrderFront(self)
        return true
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        
        
    }
}

