//
//  CheckTableViewCell.swift
//  TodoList
//
//  Created by Proctor  on 18/06/2024.
//

import UIKit

protocol CheckTableViewCellDelegate: AnyObject {
    func checkTableViewCell(_ cell: CheckTableViewCell, didChangeCheckedState checked: Bool)
}

class CheckTableViewCell: UITableViewCell {

    @IBOutlet weak var `switch`: UISwitch!
    weak var delegate: CheckTableViewCellDelegate?
    
    
    @IBOutlet weak var label: UILabel!
    
    func set(title:String,checked:Bool){
        label.text = title
        `switch`.isOn = checked
    }
    @IBAction func checked(_ sender: Any) {
        delegate?.checkTableViewCell(self, didChangeCheckedState: `switch`.isOn)
    }
}
