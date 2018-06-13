//
//  textNode.swift
//  ARKitImageRecognition
//
//  Created by wzq on 2018/6/12.
//  Copyright © 2018 Apple. All rights reserved.
//

import Foundation
import SceneKit
var startText = SCNText()
class textNode:SCNNode {
    
    override init() {
        super.init()
        startText = SCNText(string: "中华人民共和国", extrusionDepth: 0.1)
        startText.chamferRadius = 0.5
        startText.flatness = 0.3
        startText.font = UIFont(name: "Copperplate", size: 4)
        startText.firstMaterial?.specular.contents = UIColor.blue
        startText.firstMaterial?.diffuse.contents = UIColor.yellow
        startText.firstMaterial?.shininess = 0.4
        let textNode = SCNNode(geometry: startText)
        textNode.scale = SCNVector3(0.002,0.002, 0.002)
        textNode.opacity = 0.75
        textNode.eulerAngles.x = -.pi / 2
        self.addChildNode(textNode)
    }
    
    func textchange(text : String){
        startText.string = text
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
