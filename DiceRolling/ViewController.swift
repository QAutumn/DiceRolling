//
//  ViewController.swift
//  DiceRolling
//
//  Created by 澈水 on 2022/4/2.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBAction func roll(_ sender: Any) {
        let rand1 = Int.random(in: 1...6)
        let rand2 = Int.random(in: 1...6)
        diceImageView.image = UIImage(named: "dice\(rand1)")
        diceImageView2.image = UIImage(named: "dice\(rand2)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

