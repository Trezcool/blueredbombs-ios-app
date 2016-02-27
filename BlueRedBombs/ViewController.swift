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
    
    func hideShowBomb(bomb: UIImageView, isHidden: Bool) {
        if isHidden {
            bomb.hidden = false
        }
        else {
            bomb.hidden = true
        }
    }

    @IBAction func hideBlueBomb(sender: AnyObject) {
        hideShowBomb(blueBomb, isHidden: isBlueBombHidden)
        isBlueBombHidden = !isBlueBombHidden
        if isBlueBombHidden {
            hideBlueButton.setTitle("Show Blue Bomb", forState: .Normal)
        }
        else {
            hideBlueButton.setTitle("Hide Blue Bomb", forState: .Normal)
        }
    }
    @IBAction func hideRedBomb(sender: AnyObject) {
        hideShowBomb(redBomb, isHidden: isRedBombHidden)
        isRedBombHidden = !isRedBombHidden
        if isRedBombHidden {
            hideRedButton.setTitle("Show Red Bomb", forState: .Normal)
        }
        else {
            hideRedButton.setTitle("Hide Red Bomb", forState: .Normal)
        }

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

