//
//  DefinitionViewController.swift
//  emojiDictionary
//
//  Created by Chan Yan wee on 29/10/18.
//  Copyright © 2018 Chan Yan wee. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
    var emoji = Emoji()
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiText: UILabel!
    @IBOutlet weak var emojidescrip: UILabel!
    @IBOutlet weak var emojidate: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji.stringEmoji
        emojiText.text =  emoji.definition
        emojidescrip.text = "Category: \(emoji.category)"
        emojidate.text = "BirthYear: \(emoji.birthYear)"
        
        
       
    }
    

    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
