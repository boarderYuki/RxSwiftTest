//
//  DetailViewController.swift
//  RxSwift01
//
//  Created by yuki.pro on 2018. 6. 14..
//  Copyright © 2018년 yuki. All rights reserved.
//

import UIKit

protocol CharacterDelegate {
    func didSelectCharacter (_ name:String)
}

class DetailViewController: UIViewController {
    
    
    var delegate:CharacterDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func characterSelected(_ sender: UIButton) {
        guard let characterName = sender.titleLabel?.text else {return}
        
        if let delegateObject = delegate {
            delegateObject.didSelectCharacter(characterName)
        }
    }
    
    
}
