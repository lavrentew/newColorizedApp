//
//  ViewController.swift
//  newColorizedApp
//
//  Created by Николай Лаврентьев on 4/26/24.
//

import UIKit

class ViewController: UIViewController {

    
    //MARK: = IBOutlets
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
        
        setColor()
        
        redLabel.text = string(from: redSlider)
        greenLabel.text = string(from: greenSlider)
        blueLabel.text = string(from: blueSlider)
    }
    //MARK: = IBOutletsAction
    @IBAction func sliderAction(_ sender: UISlider) {
        setColor()
        switch sender {
        case redSlider:
            redLabel.text = string(from: redSlider)
        case greenSlider:
            greenLabel.text = string(from: greenSlider)
        default:
            blueLabel.text = string(from: blueSlider)
        }
    }
    
    //MARK: = Private Methods
    private func setColor(){
        colorView.backgroundColor = UIColor(
         red: CGFloat(redSlider.value),
         green: CGFloat(greenSlider.value),
         blue: CGFloat(blueSlider.value),
         alpha: 1)
        
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

