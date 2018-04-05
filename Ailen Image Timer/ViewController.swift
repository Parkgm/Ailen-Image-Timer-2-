//
//  ViewController.swift
//  Ailen Image Timer
//
//  Created by D7703_21 on 2018. 4. 5..
//  Copyright © 2018년 D7703_21. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 1
    var myTimer = Timer()
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var numberLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = String(counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    @IBAction func button(_ sender: UIButton) {
        myTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.doAnimation) , userInfo: nil, repeats: true)
    }
    
    @IBAction func buttonStop(_ sender: UIButton) {
        myTimer.invalidate()
    }
    
    // Timer에 의해 동적으로 호출되는 함수
    @objc func doAnimation() {
        if counter == 5 {
            counter = 1
        } else {
            counter = counter + 1
        }
        
        imageView.image = UIImage(named: "frame\(counter).png")
        numberLabel.text = String(counter)
    }
    
    
}

