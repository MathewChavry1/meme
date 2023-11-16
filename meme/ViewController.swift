//
//  ViewController.swift
//  meme
//
//  Created by 8h on 11/13/23.
//

import UIKit

class ViewController: UIViewController {

    
    var topArray:[captionOption] = [captionOption(emoji:"🧐", caption: "When your thinking hard on something"),
    captionOption(emoji: "😮‍💨", caption: "Thinking of my next meal"),
                captionOption(emoji: "🧞", caption: "Trying to manifest a new car.")]
    var bottomArray:[captionOption] =
    [captionOption(emoji: "🧐", caption: "🧐"),
    captionOption(emoji: "😮‍💨", caption: "😮‍💨"), captionOption(emoji: "🧞", caption: "🧞")]
    
    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topSegmentedControl.removeAllSegments()
        bottomSegmentedControl.removeAllSegments()
    
        for choice in topArray { topSegmentedControl.insertSegment(withTitle: choice.emoji, at: topArray.count, animated: false)
            
            
        }
        
        for choice in bottomArray { bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomArray.count, animated: false)
            
            
            topSegmentedControl.selectedSegmentIndex = 0
            
            bottomSegmentedControl.selectedSegmentIndex = 0
            
            topLabel.text = topArray[0].caption
            bottomLabel.text = bottomArray[0].caption
            
            
        }
}

    @IBAction func changeOption(_ sender: UISegmentedControl) {
        topLabel.text = topArray[topSegmentedControl.selectedSegmentIndex].caption
        
        bottomLabel.text = bottomArray[bottomSegmentedControl.selectedSegmentIndex].caption
    }
    
    @IBAction func dragTopLabel(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .changed { topLabel.center = sender.location(in: view) }
        
    }

    
    
    @IBAction func dragBottomLabel(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .changed { bottomLabel.center = sender.location(in: view) }

    }
}

