//
//  ViewController.swift
//  CodeBreaker
//
//  Created by Spencer Hurd on 7/30/22.
//

import UIKit

class ViewController: UIViewController {
    
    var viemModel = ViewModel()
    
    @IBOutlet weak var ball1Label: UILabel!
    @IBOutlet weak var ball2Label: UILabel!
    @IBOutlet weak var ball3Label: UILabel!
    @IBOutlet weak var ball4Label: UILabel!
    @IBOutlet weak var ball5Label: UILabel!
    @IBOutlet weak var ball6Label: UILabel!
    
    @IBAction func generateNumbers(_ sender: UIButton) {
        viemModel.assignPowerballs()
        ball1Label.text = String(viemModel.theChosen6powerballs[0].number)
        ball2Label.text = String(viemModel.theChosen6powerballs[1].number)
        ball3Label.text = String(viemModel.theChosen6powerballs[2].number)
        ball4Label.text = String(viemModel.theChosen6powerballs[3].number)
        ball5Label.text = String(viemModel.theChosen6powerballs[4].number)
        ball6Label.text = String(viemModel.theChosen6powerballs[5].number)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viemModel.assignPowerballs()
    }


}

