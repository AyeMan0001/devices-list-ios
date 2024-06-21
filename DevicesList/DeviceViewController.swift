//
//  TableViewController.swift
//  TodoList
//
//  Created by Proctor  on 21/06/2024.
//

import UIKit

protocol DeviceViewControllerDelegate : AnyObject {
    func deviceViewController(_ vc: DeviceViewController, didSaveDevice : Devices)
    
}

class DeviceViewController: UIViewController {

    var device : Devices?
    weak var delegate : DeviceViewControllerDelegate?
    
    @IBOutlet weak var editTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        editTextField.text = device?.title

    }
    
    @IBAction func save(_ sender: Any) {
        let device = Devices(title: editTextField.text!)
        delegate?.deviceViewController(self, didSaveDevice: device)
    }
    

}
