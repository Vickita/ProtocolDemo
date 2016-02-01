//
//  ViewController.swift
//  ProtocolDemo
//
//  Created by SOTSYS021 on 17/12/15.
//  Copyright © 2015 Vikita Padaliya. All rights reserved.
//

import UIKit

class ViewController: UIViewController,MyProtocol   {
    
    @IBOutlet var lblName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool) {
      
        
    }
    
    func getMyName(aName: String) {
        lblName.text = aName
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "push"){
            
            let Svc : SecondViewController = segue.destinationViewController as! SecondViewController
            
            Svc.delegate = self
           
        }
    }
   
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

