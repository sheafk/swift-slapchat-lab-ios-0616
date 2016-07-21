//
//  AddMessageViewController.swift
//  SlapChat
//
//  Created by Shea Furey-King on 7/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import CoreData


class AddMessageViewController: UIViewController {

    @IBOutlet weak var newMessageTextField: UITextField!
    
    @IBAction func saveButtonTapped(sender: AnyObject) {
        
        let dataStore = DataStore()
        let newerMessage: Message = NSEntityDescription.insertNewObjectForEntityForName("Message", inManagedObjectContext: dataStore.managedObjectContext) as! Message
        newerMessage.content = newMessageTextField.text
        newerMessage.createdAt = NSDate()
        dataStore.saveContext()
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
