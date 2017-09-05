//
//  main.swift
//  Test
//
//  Created by Jacob Peterson on 8/29/17.
//  Copyright © 2017 Jacob Peterson. All rights reserved.
//

import Cocoa

let app = NSApplication.shared()
let delegate = AppDelegate() //alloc main app's delegate class
app.delegate =  delegate //set as app's delegate
app.run()
