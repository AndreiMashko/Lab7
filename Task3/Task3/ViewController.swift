//
//  ViewController.swift
//  Task3
//
//  Created by fpmi on 21.04.17.
//  Copyright (c) 2017 mashko. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var backgroundSwitch: UISwitch!
    
    @IBOutlet weak var switchIndicator: UILabel!
    
    
    @IBAction func backgroundSwitchTapped(sender: AnyObject) {
        
        if backgroundSwitch.on
        {
            switchIndicator.text = "Background image: bg1.jpeg"
            view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1")!)
        }
        else
        {
            switchIndicator.text = "Background image: bg2.jpeg"
            view.backgroundColor = UIColor(patternImage: UIImage(named: "bg2")!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchIndicator.textColor = UIColor.whiteColor()
        switchIndicator.text = "Background image: bg2.jpg";
        view.backgroundColor = UIColor(patternImage: UIImage(named: "bg2")!)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

