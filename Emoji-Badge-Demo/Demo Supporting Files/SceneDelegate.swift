//
//  SceneDelegate.swift
//  Emoji-Badge-Demo
//
//  Created by Bryce Pauken on 4/27/20.
//  Copyright © 2020 bryce.co. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func sceneWillResignActive(_ scene: UIScene) {
        EmojiBadges().showStagesOfGrief()
    }

}

