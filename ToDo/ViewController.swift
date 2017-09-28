//
//  ViewController.swift
//  ToDo
//
//  Created by APCSP on 9/27/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    @IBOutlet weak var tableView: UITableView!
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var tasks = [Task]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = tasks[indexPath.row].name
        return cell
    }
    
    

}

