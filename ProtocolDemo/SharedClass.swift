//
//  SharedClass.swift
//  ProtocolDemo
//
//  Created by SOTSYS021 on 17/12/15.
//  Copyright © 2015 Vikita Padaliya. All rights reserved.
//

import UIKit

protocol nameProtocol{
    
    func getData(vName : String)
}

class SharedClass: NSObject {
    
   var delegate : nameProtocol?
    
    func getString (aName : String){
        
        let strName = "Hello " + aName + "!"
        delegate?.getData(strName)
    }
   
}
