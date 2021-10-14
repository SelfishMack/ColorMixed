//
//  ViewController.swift
//  HW_2.2
//
//  Created by Владимир Макаров on 14.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    
    @IBOutlet weak var slaiderRed: UISlider!
    @IBOutlet weak var slaiderGreen: UISlider!
    @IBOutlet weak var slaiderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slaiderRed.value = 0.5
        slaiderGreen.value = 0.5
        slaiderBlue.value = 0.5
        
//        labelReg.text = String(format: "%.2f", slaiderRed.value)
//        labelGreen.text = String(format: "%.2f", slaiderGreen.value)
//        labelBlue.text = String(format: "%.2f", slaiderBlue.value)
        
        setColorView()
    }
    
    func setColorView() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(slaiderRed.value),
            green: CGFloat(slaiderGreen.value),
            blue: CGFloat(slaiderBlue.value),
            alpha: 1)
        labelRed.text = String(format: "%.2f", slaiderRed.value)
        labelGreen.text = String(format: "%.2f", slaiderGreen.value)
        labelBlue.text = String(format: "%.2f", slaiderBlue.value)
    }
    
    
    @IBAction func slaiderRedAction() {
        setColorView()
    }
    
    @IBAction func slaiderGreenAction() {
        setColorView()
    }
    
    @IBAction func slaiderBlueAction() {
        setColorView()
    }
    
}

