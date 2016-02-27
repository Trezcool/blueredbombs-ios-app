//
//  ViewController.swift
//  BlueRedBombs
//
//  Created by Trezcool on 2016/02/27.
//  Copyright © 2016 TRZTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var blueBomb: UIImageView!
    @IBOutlet var redBomb: UIImageView!
    @IBOutlet var hideBlueButton: UIButton!
    @IBOutlet var hideRedButton: UIButton!
    
    var isBlueBombHidden: Bool = false
    var isRedBombHidden: Bool = false
    
    func hideShowBomb(bomb: UIImageView, isHidden: Bool, hideButton: UIButton, color: String) {
        if isHidden {
            bomb.hidden = false
            hideButton.setTitle("Hide \(color) Bomb", forState: .Normal)
        }
        else {
            bomb.hidden = true
            hideButton.setTitle("Show \(color) Bomb", forState: .Normal)
        }
    }

    @IBAction func hideBlueBomb(sender: AnyObject) {
        hideShowBomb(blueBomb, isHidden: isBlueBombHidden, hideButton: hideBlueButton, color: "Blue")
        isBlueBombHidden = !isBlueBombHidden
    }
    @IBAction func hideRedBomb(sender: AnyObject) {
        hideShowBomb(redBomb, isHidden: isRedBombHidden, hideButton: hideRedButton, color: "Red")
        isRedBombHidden = !isRedBombHidden

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

