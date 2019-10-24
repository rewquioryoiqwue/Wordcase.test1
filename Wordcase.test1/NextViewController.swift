//
//  NextViewController.swift
//  Wordcase.test1
//
//  Created by 新谷修平 on 2019/10/24.
//  Copyright © 2019 Shuhei Shintani. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    
    var textArray2 = [String]()
    var i = 1
   
    
    @IBOutlet weak var wordLabel: UILabel!
    
    
   
    
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wordLabel.numberOfLines = 3
        
        
        
        textArray2 = textArray2.shuffled()
        wordLabel.text = textArray2.first!

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func next(_ sender: Any) {
        
        if i < textArray2.count {
            wordLabel.text = textArray2[i]
            i += 1
        }
        
        else {
            i = 0
            textArray2 = textArray2.shuffled()
        }
        
        
    }
        
        
        
        
        
        
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    */


