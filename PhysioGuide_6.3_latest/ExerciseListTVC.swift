//
//  ExerciseListTVC.swift
//  PhysioGuide_7
//
//  Created by Thomas Breen on 2015-11-22.
//  Copyright © 2015 Team STAR. All rights reserved.
//

import UIKit

class ExerciseListTVC: UITableViewController {
    // MARK: Properties
    
    var exercises = [Exercise]()
    
    func loadSampleExercises() {
        let icon1 = UIImage(named: "Title")
        let exercise1 = Exercise(name: "Squat", icon: icon1, link: "youtube.com/squatexample")!
        
        let icon2 = UIImage(named: "Title")
        let exercise2 = Exercise(name: "Lunge", icon: icon2, link: "youtube.com/lungeexample")!
        
        let icon3 = UIImage(named: "Title")
        let exercise3 = Exercise(name: "Jogging", icon: icon3, link: "youtube.com/joggingexample")!
        
        exercises += [exercise1, exercise2, exercise3]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //load sample data
        //loadSampleExercises()
    }
    
    //how many sections should be in the table view controller? Perhaps 3, one for each of Strech/Strength/Cardio
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    //how many rows are in each section. Currently placing the number of exercises to be safe - could be different though.
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Table view cels are reused and should be dequeued using a cell identifier
        //let cellIdentifier = "ExercisesListTVCCell"
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
        
        //config cell
        
        return cell
    }
    
    
}
