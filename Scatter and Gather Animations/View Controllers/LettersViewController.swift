//
//  LettersViewController.swift
//  Scatter and Gather Animations
//
//  Created by macbook on 10/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class LettersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var isScattered: Bool = false
    
    private var toggleBarButton: UIBarButtonItem!
    
    //TODO: Connect an IBAction to your view controller: toggleButtonPressed(_:).
    @IBAction func toggleButtonPressed(button: UIBarButtonItem) {
        
        //TODO: add scattering and gathering func here
        if isScattered == false {
            
            
            isScattered = true
        } else {
            
            
            isScattered = false
        }
    }
    
    
    
    
    private func setUpToggleBarButton() {
        
        let toggleBarButtom = UIBarButtonItem()
        navigationItem.rightBarButtonItem = toggleBarButtom
        toggleBarButtom.title = "Toggle"
        
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
