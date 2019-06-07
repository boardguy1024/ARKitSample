//
//  ViewController.swift
//  ArkitSample
//
//  Created by park kyung suk on 2019/06/07.
//  Copyright © 2019 park kyung suk. All rights reserved.
//

import UIKit
import ARKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sceneView: ARSCNView!
    
    let configuration = ARWorldTrackingConfiguration()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //sceneViewに
        //FeaturePointsを表示、
        self.sceneView.debugOptions = [.showFeaturePoints, .showWorldOrigin]
        
        // When the device is able to track its position and orientation at all tiems.
        // これをセットすることで常にデバイスはポジションや方向をトラキングするようになる
        self.sceneView.session.run(configuration)
    }


}

