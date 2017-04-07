//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Derek Meyers on 4/7/17.
//  Copyright © 2017 AppAlchemy. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet var definitionLabel: UILabel!
    @IBOutlet var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😀" {
            
            definitionLabel.text = "A very smiley face!"
        }
        
        if emoji == "😎" {
            
            definitionLabel.text = "You are too cool for school!"
        }
        
        if emoji == "💩" {
            
            definitionLabel.text = "What an amazing piece of crap!"
        }
        
        if emoji == "🙈" {
            
            definitionLabel.text = "I'll pretend I didn't see that!"
        }
        
        if emoji == "🐳" {
            
            definitionLabel.text = "Whale of a tale; unbelievable!"
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
