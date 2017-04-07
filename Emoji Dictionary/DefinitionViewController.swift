//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Derek Meyers on 4/7/17.
//  Copyright © 2017 AppAlchemy. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
