//
//  ViewController.swift
//  CodeBreaker
//
//  Created by Spencer Hurd on 7/30/22.
//

import UIKit

class ViewController: UIViewController {
    
    var viemModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viemModel.assignPowerballs()
    }


}

