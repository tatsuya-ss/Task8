//
//  SecondViewController.swift
//  Task8
//
//  Created by 坂本龍哉 on 2020/10/12.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var secondSlider: UISlider!
    private let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.text = String(delegate.slider)
        secondSlider.value = delegate.slider
    }
    
    @IBAction func sliderSecond(_ sender: UISlider) {
        let sliderValue = secondSlider.value
        label.text = String(sliderValue)
        delegate.slider = sliderValue
    }
}
