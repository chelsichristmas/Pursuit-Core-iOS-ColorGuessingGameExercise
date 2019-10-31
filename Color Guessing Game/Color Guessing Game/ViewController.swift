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
    @IBOutlet weak var highScoreBox: UITextField!
    
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    var randomRed: CGFloat = 0
    var randomBlue: CGFloat = 0
    var randomGreen: CGFloat = 0
    var pointCounter = 0
    var highScore = 0
    
    
    
    func getRandomColor() {
        
        randomRed = CGFloat.random(in: 0...1)
        randomBlue = CGFloat.random(in: 0...1)
        randomGreen = CGFloat.random(in: 0...1)
        
        let myColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1)
        
        display.backgroundColor = myColor
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       getRandomColor()
    }

    
    func winningColor(intake: UIButton) {
           switch intake.tag {
           case 0 :
               if randomRed > randomBlue && randomRed > randomGreen  {
                   gameStatus.text = "Correct!"
                   pointCounter += 1
                   points.text = "\(pointCounter)"
               } else {
                   gameStatus.text = "Incorrect. Try Again!"
                pointCounter = 0
                points.text = "\(pointCounter)"
                   }
           case 1 :
               if randomBlue > randomRed && randomBlue > randomGreen {
               gameStatus.text = "Correct!"
               pointCounter += 1
               points.text = "\(pointCounter)"
           } else {
               gameStatus.text = "Incorrect. Try Again!"
                pointCounter = 0
                points.text = "\(pointCounter)"
                            
               }
           case 2:
               if randomGreen > randomRed && randomGreen > randomBlue {
                   gameStatus.text = "Correct!"
                   pointCounter += 1
                   points.text = "\(pointCounter)"
               } else {
                   gameStatus.text = "Incorrect. Try Again!"
                pointCounter = 0
                points.text = "\(pointCounter)"
                
                   }
           default:
               print("Nada")
           }
           }
    
    func highScore(currentScore: Int) -> Int {
    
        
        if currentScore > highScore {
            highScore = currentScore
            highScoreBox.text = "\(highScore)"
            
            
      }
        return highScore
    }
    
    var color = UIColor.white
    @IBAction func chooseColor(_ sender: UIButton) {
      
        winningColor(intake: sender)
    
        getRandomColor()
        
        highScore(currentScore: pointCounter)
        
       
        }
            
        //var arrayOfColors = [randomRed, randomBlue, randomGreen]
        //var randomColor = arrayOfColors.randomElement()
       
       //
        
        
    
    
    
    

  
}
