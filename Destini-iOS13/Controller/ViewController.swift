//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let chosen = sender.currentTitle!
        storyBrain.nextStory(chosen)
        updateUI()
    }
    
    func updateUI() {
        let options = storyBrain.getCurrentOptions()
        storyLabel.text = storyBrain.getCurrentStory()
        choice1Button.setTitle(options[0], for: .normal)
        choice2Button.setTitle(options[1], for: .normal)
    }
    
}

