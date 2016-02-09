//
//  ViewController.swift
//  fetchSample3-Swift
//
//  Created by BackendServTestUser on 2/9/16.
//  Copyright © 2016 MartinApostolov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Everlive.setApplicationId("your-appId-here")
        Everlive.setServerUrl("https://api.everlive.com/v1")
        
        //Fetch result called on the EVObject
        Message.fetchAll {(messages:Array!, error:NSError!) -> Void in
            if(error != nil) {
                print("Fetch error 1: \(error)")
            } else {
                print("Fetch result 1: \(messages)")
            }
        }
        
        //Fetch result using EVDataStore
        let dataStore: EVDataStore = EVDataStore.sharedInstance() as! EVDataStore
        dataStore.fetchAll(Message.self, block: { (result, error ) -> Void in
            if(result != nil){
                print("Fetch result 2: \(result)")
            }else{
                print("Fetch error 2: \(error)")
            }
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

