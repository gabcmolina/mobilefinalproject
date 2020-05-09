//
//  ViewController.swift
//  MultipleEx
//
//  Created by Gabriella Molina on 4/8/20.
//  Copyright © 2020 Gabriella Molina. All rights reserved.
//

import UIKit

class Global {
    var nameVar = String()
    var switchVar = String()
    var sliderVar:Int = 0
    var sliderbonus:Int = 0
    var pickerVar = String()
    var total:Int = 0
    var answer:Int = 0
}

let global = Global()
        

class ViewController: UIViewController {
    
//outlets
    
    @IBOutlet weak var navView: UIView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var myName: UITextField!
    
    @IBOutlet weak var theName: UILabel!
    
    @IBOutlet weak var theSwitch: UILabel!
    
    @IBOutlet weak var theSlider: UILabel!
    
    @IBOutlet weak var thePicker: UILabel!
    
    @IBOutlet weak var myAnswer: UILabel!
    
      @IBOutlet weak var myImage: UIImageView!
    
    //actions
    
  
  
    @IBAction func clickMenu(_ sender: UIBarButtonItem) {
    if(navView.isHidden) {
                   navView.isHidden = false
               }
               else {
                   navView.isHidden = true
               }
    }
    
    @IBAction func myButton(_ sender: UIButton) {
        global.nameVar = myName.text!
        theName.text = "Name: " + global.nameVar
        myName.resignFirstResponder()
    }
    
    @IBAction func myReset(_ sender: Any) {
        if(myImage.isHidden) {
            myImage.isHidden = false
        }
        else {
            myImage.isHidden = true
            global.total = 0
            
            
        
     }
    }
    
    @IBAction func type(_ sender: UIButton) {
        
       if(global.total > 1 && global.total <= 4) {
                myAnswer.text = "You're the slacker!"
            
                myImage.image = UIImage(named: "xxx-1")
        myImage.resignFirstResponder()
               }
            
        else if(global.total > 5 && global.total <= 7){
                   myAnswer.text = "You're the skater (AKA barely skating by)!"
                   myImage.image = UIImage(named: "skates")
             myImage.resignFirstResponder()
               }
            
        else if(global.total > 8 && global.total <= 10){
                    myAnswer.text = "You're well-balanced!"
                    myImage.image = UIImage(named: "balance")
            myImage.resignFirstResponder()
                          }
            
               else{
                   myAnswer.text = "You are an overachiever!"
                   myImage.image = UIImage(named: "bookstack-1")
            myImage.resignFirstResponder()
               }
    
    }
 
    override func viewWillDisappear(_ animated: Bool) {
          navView.isHidden = true
      
    }
    
    override func viewWillAppear(_ animated: Bool){
    theSwitch.text = "Class? \(global.switchVar)"
        theSlider.text = "Study hours: \(global.sliderVar)"
        thePicker.text = "I watch \(global.pickerVar)"
        
        myAnswer.text = "Answer: \(global.total)"
        }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

