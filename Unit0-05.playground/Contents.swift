// Created on: Jan-2018
// Created by: Christine Zhang
// Created for: ICS3U
// This program is the UIKit solution for 

// this will be commented out when code moved to Xcode
import PlaygroundSupport

import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    let instructionLabel : UILabel = UILabel()
    let answerButton = UIButton()
    let areaLabel = UILabel()
    let perimeterLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        // properties
        instructionLabel.text = "What is the area and perimeter of a rectangle with length 5cm and width 3cm?"
        instructionLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        instructionLabel.textAlignment = NSTextAlignment.center
        
        view.addSubview(instructionLabel)
        
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20).isActive = true
        
        //areaLabel.text = 15cm^2
        areaLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        areaLabel.textAlignment = NSTextAlignment.center
        view.addSubview(areaLabel)
        areaLabel.translatesAutoresizingMaskIntoConstraints = false
        areaLabel.topAnchor.constraint(equalTo: view.topAnchor,constant:75).isActive = true
        areaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:20).isActive = true
        
        perimeterLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        perimeterLabel.textAlignment = NSTextAlignment.center
        view.addSubview(perimeterLabel)
        perimeterLabel.translatesAutoresizingMaskIntoConstraints = false
        perimeterLabel.topAnchor.constraint(equalTo: view.topAnchor, constant:100).isActive = true
        perimeterLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:20).isActive = true
        
        answerButton.setTitle("Answer", for: UIControlState.normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(showAnswer), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: view.topAnchor,constant:40).isActive = true
        answerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:20).isActive = true
        
    }
    @objc func showAnswer() {
        areaLabel.text = "Area = 15cm^2"
        perimeterLabel.text = "Perimeter = 16cm"
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}

PlaygroundPage.current.liveView = ViewController()

