//
//  ViewController.swift
//  TestFDStackView
//
//  Created by Aimy on 10/10/15.
//  Copyright © 2015 Aimy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var stackView: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onPressedAddBtn(sender: UIButton) {
        if let stackView = self.stackView {
            stackView.removeFromSuperview()
        }

        self.stackView = nil

        let nib = UINib(nibName: "NestStackView", bundle: nil)
        if let view = nib.instantiateWithOwner(nil, options: nil).first as? UIView {
            view.frame = CGRectMake(100, 100, 200, 200)
            self.view.addSubview(view)
            self.stackView = view
        }
    }

    @IBAction func onPressedRemoveBtn(sender: UIButton) {
        if let stackView = self.stackView {
            stackView.removeFromSuperview()
        }

        self.stackView = nil;
    }
}

