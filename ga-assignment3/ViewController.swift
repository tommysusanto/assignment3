//
//  ViewController.swift
//  ga-assignment3
//
//  Created by Tommy Susanto on 19/04/2016.
//  Copyright © 2016 Tommy Susanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var gestureRec: UISwipeGestureRecognizer!
    var secondView = SecondView()

    @IBAction func addTarget(sender: AnyObject) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewTwo: UIViewController = storyboard.instantiateViewControllerWithIdentifier("SecondView")
        self.presentViewController(viewTwo, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Navigation Controller Color setup
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 255/255, green: 41/255, blue: 67/255, alpha: 1)
        self.navigationController?.navigationBar.tintColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.init(red: 255/255, green: 255/255, blue: 255.255, alpha: 1)]
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClicked(sender: AnyObject) {
        performSegueWithIdentifier("segue1", sender: nil)
    }

}

