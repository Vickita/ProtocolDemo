//
//  SecondViewController.swift
//  ProtocolDemo
//
//  Created by SOTSYS021 on 17/12/15.
//  Copyright © 2015 Vikita Padaliya. All rights reserved.
//

import UIKit

protocol MyProtocol{
    
    func getMyName(aName:String)
}

class SecondViewController: UIViewController,nameProtocol {

    var delegate : MyProtocol?
    
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnClickOk(sender: AnyObject) {
        
        print(txtName.text)
        self.delegate?.getMyName(txtName.text!)
        
        Helper.delegate = self
        
        Helper.getString(txtName.text!)
        
        // Using shared class
        //let name =  Helper.getString(txtName.text!)
        //print(name)
        
       // self.navigationController?.popViewControllerAnimated(true)
        
    }
    
    func getData(vName: String) {
        
        
        print(vName)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
