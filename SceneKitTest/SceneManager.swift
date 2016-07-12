//
//  lib3D.swift
//  SceneKitTest
//
//  Created by DBW_1 on 07/07/16.
//  Copyright © 2016 Digitalblend. All rights reserved.
//

import SceneKit
import UIKit

class SceneManager: NSObject
{
    private let assetFolder: String
    private let mainCamera: SCNNode
    private var view: SCNView
    private let scene: SCNScene
    
    
    init(view: SCNView, assetFolder: String, sceneFile: String, mainCameraName: String, backgroundColor: UIColor) {
		
        self.assetFolder = assetFolder
        self.scene = SCNScene(named: (self.assetFolder + "/scene/" + sceneFile))!
        self.mainCamera = self.scene.rootNode.childNodeWithName(mainCameraName, recursively: true)!
        self.mainCamera.camera?.automaticallyAdjustsZRange = true
        self.view = view
        self.view.backgroundColor = backgroundColor
        self.view.allowsCameraControl = false
        self.view.pointOfView = self.mainCamera
        self.view.scene = self.scene
		
		super.init()

//        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
		
		let gesture = UITapGestureRecognizer()
		gesture.numberOfTapsRequired = 1
		gesture.numberOfTouchesRequired = 1
		gesture.addTarget(self, action: "handleTap:")
		self.view.gestureRecognizers = [gesture]

        self.view.userInteractionEnabled = true
        self.view.addGestureRecognizer(gesture)
    }

	func handleTap(sender: UITapGestureRecognizer) {
		print("x bonjour")
	}

//    @objc func handleTap(sender: UITapGestureRecognizer) {
//        print("bonjour")
//    }

}