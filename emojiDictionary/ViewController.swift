//
//  ViewController.swift
//  emojiDictionary
//
//  Created by Chan Yan wee on 28/10/18.
//  Copyright © 2018 Chan Yan wee. All rights reserved.
//  Easy Dictionary

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emoTable: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emoTable.dataSource = self
        emoTable.delegate = self
        emojis = makeEmojiArry()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func makeEmojiArry() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "☺️"
        emoji1.category = "shy"
        emoji1.birthYear = 2010
        emoji1.definition = "shy shy"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🤯"
        emoji2.category = "blown"
        emoji2.birthYear = 1991
        emoji2.definition = "Mind Blown!"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😛"
        emoji3.category = "Tease"
        emoji3.birthYear = 1997
        emoji3.definition = "heheh...."
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🐱"
        emoji4.category = "animal"
        emoji4.birthYear = 1991
        emoji4.definition = "cute cat"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐹"
        emoji5.category = "animal"
        emoji5.birthYear = 1991
        emoji5.definition = "cute hamster"
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5]
    }


}

