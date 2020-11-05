//
//  ViewController.swift
//  AnimalSounds
//
//  Created by Ilyas on 25.10.2020.
//

import UIKit

class ViewController: UIViewController {

    let catSound = SimpleSound(named: "meow")
    let dogSound = SimpleSound(named:"woof")
    let cowSound = SimpleSound(named:"moo")
    @IBOutlet weak var animalSoundLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func catButton(_ sender: Any) {
        animalSoundLabel.text = "Meow Meow"
        
        catSound.play()
    }
    @IBAction func dogButton(_ sender: Any) {
        animalSoundLabel.text = "Gaph Gaph"
        dogSound.play()
    }
    @IBAction func cowButton(_ sender: Any) {
        animalSoundLabel.text = "Myyy Myyy"
        cowSound.play()
    }
}

