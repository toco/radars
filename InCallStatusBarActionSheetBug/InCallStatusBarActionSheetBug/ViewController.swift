//
//  ViewController.swift
//  InCallStatusBarActionSheetBug
//
//  Created by Tobias Conradi on 30.12.14.
//  Copyright (c) 2014 Tobias Conradi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func showActionSheet() {
		let alertController = UIAlertController(title: "Please hide the in call status bar", message: "You can do this by pressing ⌘Y in the Simulator.", preferredStyle: .ActionSheet)
		alertController.addAction(UIAlertAction(title: "Dismiss", style: .Cancel, handler: { (action:UIAlertAction!) -> Void in
			alertController.dismissViewControllerAnimated(true, completion: nil)
		}))
		self.presentViewController(alertController, animated: true, completion: nil)
	}
}

