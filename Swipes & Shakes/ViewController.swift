//
//  ViewController.swift
//  Swipes & Shakes
//
//  Created by admin on 11/02/2020.
//  Copyright © 2020 AM Kirsch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swipeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)))
        rightSwipe.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(rightSwipe)
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)))
        leftSwipe.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(leftSwipe)
        
        let upSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)))
        upSwipe.direction = UISwipeGestureRecognizer.Direction.up
        self.view.addGestureRecognizer(upSwipe)
        
        let downSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)))
        downSwipe.direction = UISwipeGestureRecognizer.Direction.down
        self.view.addGestureRecognizer(downSwipe)
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEvent.EventSubtype.motionShake {
            print("hey! who shook me?")
        }
    }
    
    @objc func swiped(gesture: UISwipeGestureRecognizer){
        print("swiped, gesture:  \(gesture)")
        switch gesture.direction {
            case UISwipeGestureRecognizer.Direction.right:
                print("swiped right")
                swipeLabel.text = "you swiped right"
            case UISwipeGestureRecognizer.Direction.left:
                print("swiped left")
                swipeLabel.text = "you swiped left"
            case UISwipeGestureRecognizer.Direction.up:
                print("swiped up")
                swipeLabel.text = "you swiped up"
            case UISwipeGestureRecognizer.Direction.down:
                print("swiped down")
                swipeLabel.text = "you swiped down"
        default:
            break
        }
        
    }


}

