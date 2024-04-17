//
//  RewardViewController.swift
//  locale-app
//
//  Created by Muhammad Akbar on 4/16/24.
//

import Foundation
import UIKit

class RewardViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var rewardClaimed = false // Flag to track whether the reward has been claimed
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add tap gesture recognizer to the image view
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        imageView.addGestureRecognizer(tapGestureRecognizer)
        imageView.isUserInteractionEnabled = true // Enable user interaction for the image view
    }
    
    @objc func imageTapped() {
        if rewardClaimed {
            // If reward has already been claimed, show pop-up message
            showAlert(message: "You have already claimed your reward!")
        } else {
            // Perform shake animation
            shakeImageView(imageView) {
                // Generate random text and update the label
                let randomText = self.generateRandomText()
                self.textLabel.text = randomText
                
                // Mark reward as claimed
                self.rewardClaimed = true
            }
        }
    }
    
    // Function to generate randomized text
    func generateRandomText() -> String {
        // Generate and return randomized text
        let randomTexts = ["BOGO, Code: 580890", "50% off, Code: 894098", "Free Item, Code: 098405"]
        return randomTexts.randomElement() ?? "Default Text"
    }

    // Function to perform shake animation on image view with completion block
    func shakeImageView(_ imageView: UIImageView, completion: @escaping () -> Void) {
        // Define the parameters for the shake animation
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 4
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: imageView.center.x - 10, y: imageView.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: imageView.center.x + 10, y: imageView.center.y))

        // Apply the animation to the image view's layer
        imageView.layer.add(animation, forKey: "position")
        
        // Execute completion block after the animation finishes
        DispatchQueue.main.asyncAfter(deadline: .now() + animation.duration * Double(animation.repeatCount)) {
            completion()
        }
    }
    
    // Function to show alert message
    func showAlert(message: String) {
        let alertController = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}
