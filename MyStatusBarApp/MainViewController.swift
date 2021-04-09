//
//  MainViewController.swift
//  MyStatusBarApp
//
//  Created by GYUYOUNG KANG on 2021/04/09.
//

import AppKit

class MainViewController: NSViewController {
	override func viewDidAppear()
	{
		super.viewDidAppear()
		
		print("viewDidAppear")
		
		// You can use a notification and observe it in a view model where you want to fetch the data for your SwiftUI view every time the popover appears.
		// NotificationCenter.default.post(name: Notification.Name("ViewDidAppear"), object: nil)
	}
}
