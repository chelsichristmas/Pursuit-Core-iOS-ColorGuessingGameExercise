//
//  ViewController.swift
//  Color Guessing Game
//
//  Created by Chelsi Christmas on 10/30/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var display: UIView!
    @IBOutlet weak var gameStatus: UITextField!
    @IBOutlet weak var points: UITextField!
    
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       getRandomColor()
    }

    var color = UIColor.white
    @IBAction func chooseColor(_ sender: UIButton) {
        //var arrayOfColors = [randomRed, randomBlue, randomGreen]
        //var randomColor = arrayOfColors.randomElement()
       getRandomColor()
       // if sender = randomRed > randomBlue && randomRed > randomGreen  {
        
        
    }
    
    func getRandomColor() {
        
        let randomRed = CGFloat.random(in: 0...1)
        let randomBlue = CGFloat.random(in: 0...1)
        let randomGreen = CGFloat.random(in: 0...1)
        
        //let randNum = CGFloat.random(in: 0...1)
        
        let myColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1)
        
        display.backgroundColor = myColor
        
        
            
            
        
    }
    
}

