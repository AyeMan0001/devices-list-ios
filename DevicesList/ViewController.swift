//
//  ViewController.swift
//  TodoList
//
//  Created by Proctor  on 18/06/2024.
//

import UIKit

class ViewController: UIViewController {

    var devices = [
        Devices(title: "thing1"),
        Devices(title: "thing2"),
        Devices(title: "thing3")


    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func editTable(_ sender: Any) {
        tableView.isEditing = !tableView.isEditing
    }
    
    @IBSegueAction func deviceViewController2(_ coder: NSCoder) -> DeviceViewController? {
        let vc = DeviceViewController(coder: coder)
        
        if let indexpath = tableView.indexPathForSelectedRow {
          let device = devices[indexpath.row]
          vc?.device = device
        }
        vc?.delegate = self
        return vc
    }
    @IBSegueAction func deviceViewController(_ coder: NSCoder) -> DeviceViewController? {
        let vc = DeviceViewController(coder: coder)
        
        if let indexpath = tableView.indexPathForSelectedRow {
          let device = devices[indexpath.row]
          vc?.device = device
        }
        vc?.delegate = self
        vc?.presentationController?.delegate = self

        return vc
    }
}
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
      return .delete
    }

}
extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return devices.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "checked cell", for: indexPath) as! CheckTableViewCell
        cell.delegate = self
        let device = devices[indexPath.row]
        

        cell.set(title: device.title, checked: device.isDeviceOn)
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
      if editingStyle == .delete {
        devices.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .automatic)
      }
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
      let device = devices.remove(at: sourceIndexPath.row)
      devices.insert(device, at: destinationIndexPath.row)
    }


}
extension ViewController: CheckTableViewCellDelegate{
    func checkTableViewCell(_ cell: CheckTableViewCell, didChangeCheckedState checked: Bool) {
        guard let indexPath = tableView.indexPath(for: cell) else{
            return
        }
        let device = devices[indexPath.row]
        let newDevice = Devices(title: device.title,isDeviceOn :checked)
        
        devices[indexPath.row] = newDevice
        
        
        
    }
}

extension ViewController: DeviceViewControllerDelegate {
    func deviceViewController(_ vc: DeviceViewController, didSaveDevice device: Devices) {
        dismiss(animated: true) {
          if let indexPath = self.tableView.indexPathForSelectedRow {
            // update
            self.devices[indexPath.row] = device
            self.tableView.reloadRows(at: [indexPath], with: .none)
          } else {
            // create
            self.devices.append(device)
            self.tableView.insertRows(at: [IndexPath(row: self.devices.count-1, section: 0)], with: .automatic)
          }
        }
      
      }
    
}
extension ViewController: UIAdaptivePresentationControllerDelegate {
  
  func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
    if let indexPath = tableView.indexPathForSelectedRow {
      tableView.deselectRow(at: indexPath, animated: true)
    }
  }
  
}


