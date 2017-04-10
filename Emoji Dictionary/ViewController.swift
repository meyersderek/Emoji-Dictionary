//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Derek Meyers on 4/6/17.
//  Copyright © 2017 AppAlchemy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var emojiTable: UITableView!
    
    var emojis : [Emoji] = []
    
    // How many rows, and what goes in them?  Connect them to get this started.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTable.dataSource = self // Look to this view controller for the answer.
        emojiTable.delegate = self
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji // CTRL CMD SPACE for Emoji Menu
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A simple, smiley face."
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.birthYear = 2011
        emoji2.category = "Smiley"
        emoji2.definition = "A smiley face with sunglasses."
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💩"
        emoji3.birthYear = 2008
        emoji3.category = "Poo"
        emoji3.definition = "A happy crap."
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🙈"
        emoji4.birthYear = 2015
        emoji4.category = "Animal"
        emoji4.definition = "See no evil."
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐳"
        emoji5.birthYear = 2015
        emoji5.category = "Animal"
        emoji5.definition = "I'm so happy I'm spouting water!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
        
        
    }


}

