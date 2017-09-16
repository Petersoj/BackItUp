//
//  ViewController.swift
//  BackItUp
//
//  Created by Jacob Peterson on 8/30/17.
//  Copyright © 2017 Jacob Peterson. All rights reserved.
//

import Cocoa

class SettingsViewController: NSViewController {
    
    @IBOutlet weak var backupLocationButton: NSButton!
    @IBOutlet weak var backupLocation: NSPathControl!
    
    @IBOutlet weak var includeRadioButton: NSButton!
    @IBOutlet weak var excludeRadioButton: NSButton!
    
    @IBOutlet weak var fileListTableView: NSTableView!
    @IBOutlet weak var addFileButton: NSButton!
    @IBOutlet weak var removeFileButton: NSButton!
    
    let fileListHandler = FileListHandler()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        includeRadioButton.action = #selector(radioFileButtonToggled)
        excludeRadioButton.action = #selector(radioFileButtonToggled)
        
        backupLocationButton.action = #selector(chooseBackupLocation)
        
        fileListTableView.delegate = fileListHandler
        fileListTableView.dataSource = fileListHandler
    }
    
    func radioFileButtonToggled(_ sender: NSButton) {
        if sender == includeRadioButton && includeRadioButton.state == NSOffState { // includeRadioButton was clicked
            includeRadioButton.state = NSOnState
        } else if sender == excludeRadioButton && excludeRadioButton.state == NSOffState { // excludeRadioButton was clicked
            excludeRadioButton.state = NSOnState
        }
        
        //         FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask)[0]
        
    }
    
    func chooseBackupLocation(_ sender: NSButton) {
        let dialog = NSOpenPanel()
        
        dialog.title                   = "Choose a .txt file";
        dialog.showsResizeIndicator    = true;
        dialog.showsHiddenFiles        = false;
        dialog.canChooseDirectories    = true;
        dialog.canCreateDirectories    = true;
        dialog.allowsMultipleSelection = true;
        dialog.allowedFileTypes        = ["txt"];
        dialog.beginSheetModal(for: NSApp.mainWindow!, completionHandler: { (response: Int) -> Void in
            if response == NSModalResponseOK {
                Swift.print("\(dialog.urls[0].absoluteString)")
            }
        })
    }
}

class SettingsWindowController: NSWindowController {
    
    override func cancelOperation(_ sender: Any?) {
        self.close()
    }
}

