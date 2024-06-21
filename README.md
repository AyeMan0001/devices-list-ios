# Devices List App

This is a basic iOS application built with Swift that allows users to maintain a list of their devices and document whether each device is on or off. The app utilizes `UITableView` to display the list of devices and employs various delegates for handling user interactions.

## Features

- Add new devices to the list
- Remove devices from the list
- Toggle the status of each device (on/off)
- Simple and intuitive user interface

## Requirements

- iOS 13.0+
- Xcode 12.0+
- Swift 5.0+

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/yourusername/devices-list-ios.git
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
