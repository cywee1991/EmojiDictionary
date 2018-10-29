//
//  DefinitionViewController.swift
//  emojiDictionary
//
//  Created by Chan Yan wee on 29/10/18.
//  Copyright © 2018 Chan Yan wee. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
    var emoji = "No emoji"
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
        if emojiLabel.text == "🐱"{
            emojiText.text = "Your friendly super cat"
        }
        
        else if emojiLabel.text == "🐹"{
            emojiText.text = "Cute little hamster!!"
        }
        
        else if emojiLabel.text == "🤯"{
            emojiText.text = "Mind Blown"
        }
        
        else if emojiLabel.text == "😛"{
            emojiText.text = "Hehe loser!"
        }
        else if emojiLabel.text == "☺️"{
            emojiText.text = "Shy Shy..."
        }
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
