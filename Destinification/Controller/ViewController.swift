//
//  ViewController.swift
//  Destinification
//
//  Created by Vivek Dosaya on 30/08/19.
//  Copyright © 2019 Vivek Dosaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
   
    var answers = ["answer1a" : "I\'ll hop in. Thanks for the help!","answer1b" : "Better ask him if he\'s a murderer first.","answer2a" : "At least he\'s honest. I\'ll climb in.","answer2b" : "Wait, I know how to change a tire." ,"answer3a" : "I love Elton John! Hand him the cassette tape.","answer3b": "It\'s him or me! You take the knife and stab him."]
    
    
    var stories = [
        "story1": "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".",
        "story2":"He nods slowly, unphased by the question.",
        "story3":"As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
        "story4":"What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
        "story5": "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
        "story6" : "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""]
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var stroryLabel: UILabel!
    var storyIndex = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        displayNext()
        
        
    }

    @IBAction func buttonPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            if storyIndex == 1{
                storyIndex += 2
            }
            else if storyIndex == 3{
                storyIndex *= 2
            }
            else if storyIndex == 2{
                storyIndex += 1
            }
            displayNext()
            
        }
        else{
            
            if storyIndex == 1{
                storyIndex += 1
            }
            else if storyIndex == 3{
                storyIndex += 2
            }
            else if storyIndex == 2{
                storyIndex += 2
            }
            displayNext()
            
        }
        
    }
    func displayNext(){
        stroryLabel.text = stories["story"+"\(storyIndex)"]
        if storyIndex == 4 || storyIndex == 5 || storyIndex == 6{
            button1.isHidden = true
            button2.isHidden = true
            
            
        }
        else{
        
        button1.setTitle(answers["answer"+"\(storyIndex)"+"a"], for: .normal)
        button2.setTitle(answers["answer"+"\(storyIndex)"+"b"], for: .normal)
        }
        
        
        
    }
    
    
}

