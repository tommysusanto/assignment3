//
//  ArrayTableViewController2.swift
//  ga-assignment3
//
//  Created by Tommy Susanto on 21/04/2016.
//  Copyright © 2016 Tommy Susanto. All rights reserved.
//

import UIKit

class ArrayTableViewController2: UITableViewController {
    
    @IBOutlet var tableViewC: UITableView!
    
    var animals: [Animal] = [Animal]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.animals = [Animal(name:"Tony",species: "Tiger")]
        self.animals.append(Animal(name: "Felix", species: "Cat"))
        self.animals.append(Animal(name: "Remi", species: "Rat"))
        self.animals.append(Animal(name: "Spyro", species: "Dragon"))
        self.animals.append(Animal(name: "Milou", species: "Dog"))



        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    @IBAction func addAnimals(sender: AnyObject) {
        var alertController:UIAlertController?
        alertController = UIAlertController(title: "Hi There!",
                                            message: "Please enter a name",
                                            preferredStyle: .Alert)
        
        alertController!.addTextFieldWithConfigurationHandler(
            {(textField: UITextField!) in
                textField.placeholder = "Name"
        })
        
        let action = UIAlertAction(title: "Submit",
                                   style: UIAlertActionStyle.Default,
                                   handler: {[weak self]
                                    (paramAction:UIAlertAction!) in
                                    if let textFields = alertController?.textFields{
                                        let theTextFields = textFields as [UITextField]
                                        let enteredText = theTextFields[0].text!
                                        self!.animals.append(Animal(name: enteredText,species:"Dog"))
                                        self!.tableViewC.reloadData()
                        
                                    }
            })
        
        alertController?.addAction(action)
        self.presentViewController(alertController!,
                                   animated: true,
                                   completion: nil)
        

  }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animals.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("tableCell", forIndexPath: indexPath)

        var tempAnimal: Animal
        tempAnimal = animals[indexPath.row]
        
        cell.textLabel?.text = "Animal: \(tempAnimal.name) the \(tempAnimal.species)"
        

        return cell
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
