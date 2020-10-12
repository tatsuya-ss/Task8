//
//  FirstViewController.swift
//  Task8
//
//  Created by 坂本龍哉 on 2020/10/12.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var slider: UISlider!
    private let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.text = String(delegate.slider)
        slider.value = delegate.slider
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        let sliderValue = slider.value
        label.text = String(sliderValue)
        delegate.slider = sliderValue
    }
}
