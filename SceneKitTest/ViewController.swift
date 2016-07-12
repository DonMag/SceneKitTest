//
//  GameViewController.swift
//  SceneKitTest
//
//  Created by DBW_1 on 04/07/16.
//  Copyright (c) 2016 Digitalblend. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class ViewController: UIViewController
{
	var sMgr: SceneManager?
	
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let view = self.view as! SCNView
        view.showsStatistics = true
        
		sMgr = SceneManager(view: view, assetFolder: "art.scnassets", sceneFile: "ship.scn", mainCameraName: "camera", backgroundColor: UIColor.blackColor())
    }
	
}