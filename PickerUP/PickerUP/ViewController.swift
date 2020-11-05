//
//  ViewController.swift
//  PickerUP
//
//  Created by Ilyas on 23.10.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mixView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mixView.backgroundColor = UIColor.black
        mixView.layer.cornerRadius = mixView.bounds.height / 2
        mixView.layer.borderWidth = 3
        // Do any additional setup after loading the view.
    }
    @IBAction func sliderUpdate(_ sender: Any) {
        updateColor()
    }
    
    @IBAction func redAction(_ sender: Any) {
        updateColor()
    }
    
    @IBAction func greenAction(_ sender: Any) {
        updateColor()
    }
    @IBAction func blueColor(_ sender: Any) {
        updateColor()
    }
    @IBAction func resetBottom(_ sender: Any) {
        mixView.backgroundColor = UIColor.clear
        
    }
    func updateColor() {
        var red : CGFloat = 0
        var green: CGFloat = 0
        var blue : CGFloat = 0
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        mixView.backgroundColor = color
    }
}

