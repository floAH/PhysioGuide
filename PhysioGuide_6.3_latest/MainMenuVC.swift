//
//  MainMenuVC.swift
//  PhysioGuide_7
//
//  Author: Scott Mao, Thomas Breen, Arlene Fu, Rohm Laxton
//  Date created : 2015-11-05.
//  Copyright (c) 2015 Team STAR. All rights reserved.
//  Description:

import UIKit
import CoreData
import SwiftyJSON

class MainMenuVC: UIViewController {
    
    //var storedUser = [NSManagedObject]()
    //let localData = LocalSave()
    var arrData :JSON = []
    var myRoutines: [[String:String]] = []
    let exerciseDict: [String:String] = ["1" : "Back Extensions", "2" : "Biceps Curl", "3" : "Calf Raise", "4" : "Cat Stretch", "5" : "Crunch", "6" : "Front and Back Neck Stretch", "7" : "Back Hyperextensions", "8" : "Jogging", "9" : "Jumping Jacks", "10" : "Knees to Chest", "11" : "Lateral Raise", "12" : "Leg Raises", "13" : "Lunges", "14" : "Modified Hurdler's Stretch", "15" : "Push-ups", "16" : "Quadriceps", "17" : "Reclined Hamstrings", "18" : "Runner's Lunge", "19" : "Russian Twist", "20" : "Shoulders Overhead", "21" : "Shoulders Posterior", "22" : "Shoulder Shrugs", "23" : "Side Hip Abductor", "24" : "Side Lunge", "25" : "Side Neck", "26" : "Side Trunk", "27" : "Spinal Twist", "28" : "Squats", "29" : "Upright Row", "30" : "Wall Calf Stretch"]
    let exMetricDict: [String:String] = ["1" : "none", "2" : "pounds", "3" : "none", "4" : "none", "5" : "count", "6" : "none", "7" : "pounds", "8" : "duration", "9" : "none", "10" : "none", "11" : "pounds", "12" : "none", "13" : "pounds", "14" : "none", "15" : "count", "16" : "none", "17" : "none", "18" : "none", "19" : "pounds", "20" : "none", "21" : "none", "22" : "pounds", "23" : "none", "24" : "none", "25" : "none", "26" : "none", "27" : "none", "28" : "pounds", "29" : "pounds", "30" : "none"]
    var routineDict : [String: String] = ["routineName" : "", "exID1" : "", "exID2" : "", "exID3" : "", "exID4" : "", "exID5" : "", "exID6" : "", "exID7" : "", "exID8" : "", "exID9" : "", "exID10" : "", "exID11" : "", "exID12" : "", "exID13" : "", "exID14" : "", "exID15" : "", "exID16" : "", "exID17" : "", "exID18" : "", "exID19" : "", "exID20" : ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myUser: String! = LocalSave.sharedLocalSave.localUser
        print("Did it work \(myUser)")
        
        let routine = Routines()
        routine.retrieveRoutines(myUser, completionHandler: { swiftyJsonVar in
            self.arrData = swiftyJsonVar
            //print("something  \(state)")
            print(self.arrData)
            print(self.arrData.count)
            for thingy in swiftyJsonVar
            {
                let aRoutine = thingy.1
                //print(aRoutine)
                for subThingy in aRoutine
                {
                    self.routineDict[subThingy.0] = subThingy.1.string
                    
                }
                self.myRoutines.append(self.routineDict)
                
            }
            
            // myRoutines[0] - myRoutines[myRoutines.count-1] contains all of the routine lists
            //print("Total lines in \(self.myRoutines[0]["routineName"]!)")
        })
        
       
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
