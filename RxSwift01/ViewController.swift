//
//  ViewController.swift
//  RxSwift01
//
//  Created by yuki.pro on 2018. 6. 14..
//  Copyright © 2018년 yuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CharacterDelegate {
    
    @IBOutlet weak var greetingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func selectCharacter(_ sender: Any) {
        
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailView") as! DetailViewController
        detailVC.delegate = self
        
        
        navigationController?.pushViewController(detailVC, animated: true)
        
    }
    
    func didSelectCharacter(_ name: String) {
        self.greetingsLabel.text = "Hello \(name)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

