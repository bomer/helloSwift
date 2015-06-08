//
//  ThirdViewController.swift
//  HelloSwiftWorld
//
//  Created by James O'Toole on 8/06/2015.
//  Copyright (c) 2015 IndustrieIT. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var Label: UILabel!
    
    let appDel = UIApplication.sharedApplication().delegate! as! AppDelegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var outputString=""
        for name: String in appDel.downloadedNames{
            outputString += name +  ", "
        }
        self.Label.text=outputString
        // Do any additional setup after loading the view.
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
