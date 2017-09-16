//
//  OptionsViewController.swift
//  BackItUp
//
//  Created by Jacob Peterson on 9/13/17.
//  Copyright © 2017 Jacob Peterson. All rights reserved.
//

import Cocoa

class OptionsViewController: NSViewController {
    
    override func viewDidLoad() {
        // Prevents resizing.
        self.preferredContentSize = self.view.frame.size
    }
    
    // Used for the preferredContentSize to prevent resizing.
    override func updateViewConstraints() {
        super.updateViewConstraints()
    }
}
