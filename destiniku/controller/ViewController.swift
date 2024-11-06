//
//  ViewController.swift
//  destiniku
//
//  Created by Anang Kurniawan on 04/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var secondaryButton: UIButton!
    @IBOutlet weak var primaryButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    private var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.evaluateAnswer(answer: sender.currentTitle)
        updateUI()
    }
    
    private func updateUI() {
        let story = storyBrain.getCurrentStory()
        questionLabel.text = story.title
        primaryButton.setTitle(story.choice1, for: .normal)
        secondaryButton.setTitle(story.choice2, for: .normal)
    }
}

