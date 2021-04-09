//
//  AppDelegate.swift
//  MyStatusBarApp
//
//  Created by GYUYOUNG KANG on 2021/04/08.
//

import Cocoa
import SwiftUI

@main
class AppDelegate: NSObject, NSApplicationDelegate {

	// popover 초기화
	var popover = NSPopover.init()

	// 상태바 인스턴스 변수
	var statusBar: StatusBarController?

	func applicationDidFinishLaunching(_ aNotification: Notification) {
		// Create the SwiftUI view that provides the window contents.
		let contentView = ContentView()

		popover.contentViewController = MainViewController()
		popover.contentSize = NSSize(width: 360, height: 360)
		popover.contentViewController?.view = NSHostingView(rootView: contentView)
		
		// 상태바 인스턴스 초기화
		statusBar = StatusBarController.init(popover)
	}

	func applicationWillTerminate(_ aNotification: Notification) {
		// Insert code here to tear down your application
	}
}

