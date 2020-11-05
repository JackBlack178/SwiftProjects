//
//  ViewController.swift
//  GuessMatter
//
//  Created by Ilyas on 25.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    let elementList = ["Carbon","Gold","Chlorine","Sodium"]
    var currentElementIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
        // Do any additional setup after loading the view.
    }
    
    func updateElement(){
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named:elementName)
        imageView.image = image
    }
    @IBAction func showAnswerButton(_ sender: Any) {
        answerLabel.text = elementList[currentElementIndex]
    }
    @IBAction func nextQuestion(_ sender: UIButton) {
        if currentElementIndex == 3 {
            currentElementIndex = 0
            updateElement()
        }
        else {
        currentElementIndex += 1
        updateElement()
        }
    }
    
}

