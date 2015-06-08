//
//  ViewController.swift
//  HelloSwiftWorld
//
//  Created by James O'Toole on 8/06/2015.
//  Copyright (c) 2015 IndustrieIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Outlets
    @IBOutlet var helloLabel: UILabel!;
    
    //Constants
    let helloconstant = "Hello there!"
    
    //Instance Variables
    var welcomeMessage: String = "" ;
    var ids: [Int]=[1,2,3,4]
    var listOfNames: [String] = []
    var emptyArray:[String]?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        //Init names
        listOfNames.append("James")
        listOfNames.append("Tom")
        listOfNames.append("Henry")
        listOfNames.append("Steven")
        listOfNames.extend(["John","Bob"])

        var count: Int = listOfNames.count;

        println("There is going to be \(listOfNames.count) names to chose from" )
        println("They are \(listOfNames)")

        helloLabel.text=helloconstant
    }
    
    @IBAction func setLabelText(sender: AnyObject) {
        var randomPos=Int(arc4random_uniform(UInt32(listOfNames.count)))
        helloLabel.text="Hello " + listOfNames[randomPos]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

