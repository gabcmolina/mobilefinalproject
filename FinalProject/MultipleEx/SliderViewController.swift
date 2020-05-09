//
//  SliderViewController.swift
//  MultipleEx
//
//  Created by Gabriella Molina on 4/8/20.
//  Copyright © 2020 Gabriella Molina. All rights reserved.
//

import UIKit


class SliderViewController: UIViewController {
    
      var sliderbonus:Int = 0

//outlets
    
    @IBOutlet weak var sliderLabel: UILabel!
    
    @IBOutlet weak var sliderVal: UILabel!
    
//actions-slider
    
    @IBAction func mySlider(_ sender: UISlider) {
        global.sliderVar = Int(sender.value)
        sliderVal.text = "\(global.sliderVar)"
        sliderbonus = Int(sender.value)
    }
    
    //button options
    
    @IBAction func coffeeshopButton(_ sender: UIButton) {
        global.total += 2
    }
    
    
    @IBAction func libraryButton(_ sender: UIButton) {
        global.total += 4
    }
    
    
    @IBAction func dormButton(_ sender: UIButton) {
        global.total += 3
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
