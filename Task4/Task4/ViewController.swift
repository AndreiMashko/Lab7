//
//  ViewController.swift
//  Task4
//
//  Created by fpmi on 28.04.17.
//  Copyright (c) 2017 mashko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gestureIndicator: UILabel!
    
    @IBAction func tap(sender: AnyObject) {
        gestureIndicator.text = "Жест: касание\n Цвет фона: зеленый"
        gestureIndicator.backgroundColor = UIColor.greenColor()
    }
    
    @IBAction func pinch(sender: AnyObject) {
        gestureIndicator.text = "Жест: масштабирование\n Цвет фона: красный"
        gestureIndicator.backgroundColor = UIColor.redColor()
    }
    @IBAction func rotation(sender: AnyObject) {
        gestureIndicator.text = "Жест: вращение\n Цвет фона: синий"
        gestureIndicator.backgroundColor = UIColor.blueColor()
    }
    
    @IBAction func swipe(sender: AnyObject) {
        gestureIndicator.text = "Жест: смахивание\n Цвет фона: серый"
        gestureIndicator.backgroundColor = UIColor.lightGrayColor()
    }
    
    @IBAction func longPress(sender: AnyObject) {
        gestureIndicator.text = "Жест: долгое нажатие\n Цвет фона: оранжевый"
        gestureIndicator.backgroundColor = UIColor.orangeColor()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gestureIndicator.userInteractionEnabled = true
        gestureIndicator.textAlignment = NSTextAlignment.Center
        gestureIndicator.numberOfLines = 2
        gestureIndicator.text = "Используйте жесты в этой области"
        gestureIndicator.backgroundColor = UIColor.yellowColor()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

