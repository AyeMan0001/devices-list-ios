# Devices List App

This is a basic iOS application built with Swift that allows users to maintain a list of their devices and document whether each device is on or off. The app utilizes `UITableView` to display the list of devices and employs various delegates for handling user interactions.

## Features

- Add new devices to the list
- Remove devices from the list
- Toggle the status of each device (on/off)
- Simple and intuitive user interface

## Screenshots

(Add screenshots of your app here)

## Requirements

- iOS 13.0+
- Xcode 12.0+
- Swift 5.0+

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/yourusername/devices-list-app.git
    ```

2. Open the project in Xcode:

    ```bash
    cd devices-list-app
    open DevicesListApp.xcodeproj
    ```

3. Build and run the project on your simulator or connected device.

## Usage

1. **Adding a Device**: Tap the "Add" button on the top-right corner to add a new device. Enter the device name and set its initial status (on/off), then save.
2. **Removing a Device**: Swipe left on any device in the list to reveal the "Delete" option. Tap "Delete" to remove the device from the list.
3. **Toggling Device Status**: Tap on the switch next to any device in the list to toggle its status between on and off.

## Project Structure

- `Models/`: Contains the data model for the devices.
- `Views/`: Contains the storyboard and custom table view cells.
- `ViewControllers/`: Contains the view controllers for the main device list and device status toggling.
- `Delegates/`: Contains delegate implementations for handling table view actions.

## Code Overview

### Models

- **Device.swift**: Defines the `Device` class which represents a single device with properties like name and status (on/off).

### Views

- **Main.storyboard**: Contains the layout for the main device list.
- **DeviceTableViewCell.swift**: Custom table view cell for displaying device information and status.

### ViewControllers

- **DevicesListViewController.swift**: Handles the display and management of the device list, including adding, removing, and toggling device status.

### Delegates

- **UITableViewDataSource**: Implements methods for populating the table view with device data.
- **UITableViewDelegate**: Implements methods for handling user interactions with the table view, such as selecting and deleting devices.

## Contributing

1. Fork the repository
2. Create a new branch (`git checkout -b feature-branch`)
3. Make your changes
4. Commit your changes (`git commit -am 'Add new feature'`)
5. Push to the branch (`git push origin feature-branch`)
6. Create a new Pull Request

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Acknowledgements

- [Your Name](https://github.com/yourusername) - Initial work

## Contact

For any inquiries, please contact [your email address].

---

Feel free to customize this README as needed for your project.
