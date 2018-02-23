//
//  ViewController.swift
//  testGit
//
//  Created by lianoq on 23/02/2018.
//  Copyright © 2018 lianoq. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        //: Playground - noun: a place where people can play
        

        var tracks = ["a","b","c","d","e","f","g","h","i"]
        
        let selectedTrack = "h"
        // OPTIONAL VALUE: gives the position of the elements searched in the array (e.g for "f" is 5)
        let index = tracks.index(where: {return $0 == selectedTrack})
        //var playlist = [String]()
        //var priorTraks = [String]()
        //var wrap = 0
        
        if index != nil{
            for track in 0..<tracks.count {
                //check if reached serached elemet OR if (loop position - index position > 0)
                if tracks[track] == selectedTrack || track - index! > 0
                {//insert elements in sequential position
                    tracks.insert(String(tracks.remove(at: track)), at: track - index!)
                }
            }
        }
        print(tracks)
        
        /*let index = tracks.index(where: {return $0 == selectedTrack})
         */
        let prefixArray = tracks.prefix(upTo : index!)
        let suffixArray = tracks.suffix(from : index!)
        print(prefixArray + suffixArray)
        
        
        
        
        

        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

