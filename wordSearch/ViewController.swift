//
//  ViewController.swift
//  wordSearch
//
//  Created by Bharath  Raj kumar on 20/02/19.
//  Copyright © 2019 Bharath Raj Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = Bundle.main.url(forResource: "capitals", withExtension: "json")!
        let contents = try! Data(contentsOf: path)
        let decodedData = try! JSONDecoder().decode([Word].self, from: contents)
        
        let wordSearch = WordSearch()
        wordSearch.words = decodedData
        wordSearch.makeGrid()
    }

    
}

