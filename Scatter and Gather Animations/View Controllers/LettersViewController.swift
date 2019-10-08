//
//  LettersViewController.swift
//  Scatter and Gather Animations
//
//  Created by macbook on 10/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class LettersViewController: UIViewController {

    @IBOutlet weak var toggleBarButton: UIBarButtonItem!
    var isScattered: Bool = false
    
    //MARK: Letters labels
    @IBOutlet weak var lLabel: UILabel!
    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var mLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var dLabel: UILabel!
    @IBOutlet weak var a2Label: UILabel!
    
    @IBOutlet weak var lambdaImageView: UIImageView!
    
    private var letterLabels: [UILabel] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    
    @IBAction func toggleBarButtonTapped(_ sender: UIBarButtonItem) {
        
        //TODO: add scattering and gathering func here
        if isScattered == false {
            
            scatter()
            isScattered = true
        } else {
            
            gather()
            isScattered = false
        }
        
    }
    
    func getRandomNumber() -> CGFloat {
        let number = CGFloat.random(in: -300...1)
        return number
    }
    
    func getSmallRandomNumber() -> CGFloat {
        let number = CGFloat.random(in: 1...9)
        return number
    }
    
    private func randomColor() -> UIColor {
        let red = CGFloat.random(in: 0...255)
        let green = CGFloat.random(in: 0...255)
        let blue = CGFloat.random(in: 0...255)
        
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1.0)
    }
    
    
  
    func scatter() {
        
        UIView.animate(withDuration: 2, delay: 0, animations: {
            
            self.lambdaImageView.alpha = 0
            //self.letterLabels.map({ $0.center.y }) = self.getRandomNumber()
            
//            for label in self.letterLabels {
//                label.center.y = self.getRandomNumber()
//                label.backgroundColor = self.randomColor()
//                label.textColor = self.randomColor()
//                label.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 4)
//            }
//
            // Changing location for each letter
            self.lLabel.center.y = self.getRandomNumber()
            self.aLabel.center.y = self.getRandomNumber()
            self.mLabel.center.y = self.getRandomNumber()
            self.bLabel.center.y = self.getRandomNumber()
            self.dLabel.center.y = self.getRandomNumber()
            self.a2Label.center.y = self.getRandomNumber()

            // changing background color for each letter
            self.lLabel.backgroundColor = self.randomColor()
            self.aLabel.backgroundColor = self.randomColor()
            self.mLabel.backgroundColor = self.randomColor()
            self.bLabel.backgroundColor = self.randomColor()
            self.dLabel.backgroundColor = self.randomColor()
            self.a2Label.backgroundColor = self.randomColor()

            // changing textColor for each letter
            self.lLabel.textColor = self.randomColor()
            self.aLabel.textColor = self.randomColor()
            self.mLabel.textColor = self.randomColor()
            self.bLabel.textColor = self.randomColor()
            self.dLabel.textColor = self.randomColor()
            self.a2Label.textColor = self.randomColor()

            self.lLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi / self.getSmallRandomNumber())
            self.aLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi / self.getSmallRandomNumber())
            self.mLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi / self.getSmallRandomNumber())
            self.bLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi / self.getSmallRandomNumber())
            self.dLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi / self.getSmallRandomNumber())
            self.a2Label.transform = CGAffineTransform(rotationAngle: CGFloat.pi / self.getSmallRandomNumber())
          

        })
//        { (_) in
//
//
//        }
//
        
        
    }
    
    func gather() {
        
        UIView.animate(withDuration: 2) {
            self.lLabel.transform = .identity
            self.aLabel.transform = .identity
            self.mLabel.transform = .identity
            self.bLabel.transform = .identity
            self.dLabel.transform = .identity
            self.a2Label.transform = .identity
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
