//
//  ViewController.swift
//  DiceRolling
//
//  Created by 澈水 on 2022/4/2.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArr = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func roll(_ sender: Any) {
        updateDiceImages()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        
    }
    
    func updateDiceImages(){
        let index1 = Int.random(in: 0...5)
        let index2 = Int.random(in: 0...5)
        diceImageView.image = UIImage(named: diceArr[index1])
        diceImageView2.image = UIImage(named: diceArr[index2])
        print("!")
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        #if DEBUG
        print("1")
        #endif
        view.backgroundColor = .yellow
        updateDiceImages()
    }
}

