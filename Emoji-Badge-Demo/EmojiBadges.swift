//
//  EmojiBadges.swift
//  Emoji-Badge-Demo
//
//  Created by Bryce Pauken on 4/27/20.
//  Copyright © 2020 bryce.co. All rights reserved.
//

import Foundation

public class EmojiBadges {

    private static let stagesOfGrief = [
        "😧", "😠", "😥", "😔", "😐"
    ]

    private var timer: Timer?

    public func showStagesOfGrief() {
        // Start a background task to allow us to execute code for a few more seconds
        let backgroundTask = UIApplication.shared.beginBackgroundTask(expirationHandler: {
            print("Warning: Background task expired")
        })

        // Show our first stage of grief immediately
        UIApplication.shared.setApplicationBadgeString(
            EmojiBadges.stagesOfGrief[0]
        )

        var stage = 1
        timer = Timer.scheduledTimer(withTimeInterval: 0.8, repeats: true) { timer in
            if stage < EmojiBadges.stagesOfGrief.count {
                // Show the next stage of grief
                UIApplication.shared.setApplicationBadgeString(
                    EmojiBadges.stagesOfGrief[stage]
                )
                stage += 1
            } else {
                // Clear notification badge & clean up
                UIApplication.shared.setApplicationBadgeString(nil)
                timer.invalidate()
                UIApplication.shared.endBackgroundTask(backgroundTask)
            }
        }


    }

}
