//
//  ViewController.swift
//  SecondDZ
//
//  Created by user184192 on 12/20/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorView.layer.cornerRadius = 10
        
        redSlider.minimumTrackTintColor = .red
        blueSlider.minimumTrackTintColor = .blue
        greenSlider.minimumTrackTintColor = .green
        
        redSlider.value = 10
        blueSlider.value = 60
        greenSlider.value = 200
        
        setColor()
        setValue(for: redLabel, blueLabel, greenLabel)
    }

    @IBAction func rgbSlider(_ sender: UISlider) {
        
        switch sender.tag {
        case 0:
            redLabel.text = string(from: sender)
        case 1:
            blueLabel.text = string(from: sender)
        case 2:
            greenLabel.text = string(from: sender)
        default:
            break
        }
    }
    
    private func setColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: 1)
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label.tag {
            case 0: redLabel.text = string(from: redSlider)
            case 1: blueLabel.text = string(from: blueSlider)
            case 2: greenLabel.text = string(from: greenSlider)
            default: break
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(Int(slider.value))
    }
    
}

