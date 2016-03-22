//
//  ViewController.swift
//  color-maker-sliders
//
//  Created by Daniel J Janiak on 3/20/16.
//  Copyright © 2016 Daniel J Janiak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var colorView: UIView!
    

    
    @IBAction func adjustColor(Sender: AnyObject) {
        
        // Make sure the program doesn't crash if the controls aren't connected
        if self.redSlider == nil {
            return
        }
        
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

