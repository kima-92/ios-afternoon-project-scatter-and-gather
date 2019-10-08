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

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    
    @IBAction func toggleBarButtonTapped(_ sender: UIBarButtonItem) {
        
        
        //TODO: add scattering and gathering func here
        if isScattered == false {
            
            
            isScattered = true
        } else {
            
            
            isScattered = false
        }
        
    }
    
  
    
    //private var toggleBarButton: UIBarButtonItem!
    
    
    
    
 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
