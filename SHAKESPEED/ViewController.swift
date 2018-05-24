//
//  ViewController.swift
//  SHAKESPEED
//
//  Created by gdcp on 2018/5/24.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit
import CoreMotion
class ViewController: UIViewController {
    var manager : CMMotionManager?
    override func viewDidLoad() {
        super.viewDidLoad()
       manager = CMMotionManager()
        manager?.startAccelerometerUpdates()
        manager?.startGyroUpdates()
        let timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(update),userInfo : nil,repeats: true)
    }
    func update(){
        print(manager?.accelerometerData?.acceleration.x)
        print(manager?.accelerometerData?.acceleration.y)
        print(manager?.gyroData?.rotationRate.z)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

