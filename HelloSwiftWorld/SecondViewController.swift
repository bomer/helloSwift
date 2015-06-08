//
//  SecondViewController.swift
//  HelloSwiftWorld
//
//  Created by James O'Toole on 8/06/2015.
//  Copyright (c) 2015 IndustrieIT. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var indicator: UIActivityIndicatorView!
    
    //class Vars
    var names:[String]=[]
    let appDel = UIApplication.sharedApplication().delegate! as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        indicator.hidden=true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func GotoThirdView(sender: AnyObject) {
        indicator.hidden=false
        
        dispatch_async(dispatch_get_main_queue()) {
            self.loadThirdScreen()
        }
        
    }
    func getJSON(urlToRequest: String) -> NSData{
//        var stringversions = String(contentsOfURL: NSURL(string: urlToRequest)!)
        var data = NSData(contentsOfURL: NSURL(string: urlToRequest)!)
        return data!
    }
    
    func parseJSON(inputData: NSData) -> NSDictionary{
        var error: NSError?
        var boardsDictionary: NSDictionary = NSJSONSerialization.JSONObjectWithData(inputData, options: NSJSONReadingOptions.MutableContainers, error: &error) as! NSDictionary
        return boardsDictionary
    }

    func loadThirdScreen(){
        var data = self.getJSON("https://api.myjson.com/bins/2uq38")
        var namesDict = self.parseJSON(data)
        self.names=namesDict["names"] as! [String]
        println(self.names)
        self.appDel.downloadedNames=self.names
        self.performSegueWithIdentifier("showthird", sender:self)
        self.indicator.hidden=true
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
