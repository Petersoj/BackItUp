//
//  FileListTableView.swift
//  BackItUp
//
//  Created by Jacob Peterson on 9/5/17.
//  Copyright © 2017 Jacob Peterson. All rights reserved.
//

import Cocoa

class FileListHandler: NSObject, NSTableViewDelegate, NSTableViewDataSource {
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return 10
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        let cell: NSTableCellView = tableView.make(withIdentifier: "cell", owner: self) as! NSTableCellView
        if let pathControl = cell.subviews[0] as? PathControlDelegate {
            pathControl.setUpPathControlDelegate(tableView, row: row)
            pathControl.url = URL(fileURLWithPath: "/asdf/asdf/asdf/asdf/asdf/asdf/asdf/asdf/asdf/asdf/asdf/asdf/asdf/asdf/asdf")
        }
        return cell
    }
}

class PathControlDelegate: NSPathControl {
    
    private weak var tableView: NSTableView?
    private var rowIndex: IndexSet?
    
    func setUpPathControlDelegate(_ tableView: NSTableView, row: Int) {
        self.tableView = tableView
        self.rowIndex = IndexSet(integer: row)
    }
    
//    override func becomeFirstResponder() -> Bool {
//        Swift.print("f")
//        var extend: Bool = false
//        if NSEvent.modifierFlags().contains(.command) {
//            extend = true
//        }
//        
//        if (tableView?.selectedRowIndexes.contains(integersIn: rowIndex!))! {
//            tableView?.deselectRow(rowIndex!.first!)
//        } else {
//            tableView?.selectRowIndexes(rowIndex!, byExtendingSelection: extend)
//        }
//        
//        return true
//    }
    
    override func mouseDown(with event: NSEvent) {
        Swift.print("f")
    }
}
