//
//  Books.swift
//  fetchSample3-Swift
//
//  Created by BackendServTestUser on 2/9/16.
//  Copyright © 2016 MartinApostolov. All rights reserved.
//

import Foundation

@objc (Message) class Message: EVObject{
    
    var content:NSString = ""
    var createdByName:NSString = ""
    var to:NSString = ""
    var read:Bool = false
    
    override var description:String{
        return "Message"
    }
}
