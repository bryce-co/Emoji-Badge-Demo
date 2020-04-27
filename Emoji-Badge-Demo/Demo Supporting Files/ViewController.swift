//
//  ViewController.swift
//  Emoji-Badge-Demo
//
//  Created by Bryce Pauken on 4/27/20.
//  Copyright © 2020 bryce.co. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Request authorization to show app icon badges
        UNUserNotificationCenter.current().requestAuthorization(options: [.badge]) { granted, error in
            if let error = error {
                print("Error when requesting badge authorization: \(error)")
                return
            }

            if !granted {
                print("You... rejected badge authorization in a badge demo app?")
            }
        }
    }


}

