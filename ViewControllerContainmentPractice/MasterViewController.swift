//
//  MasterViewController.swift
//  ViewControllerContainmentPractice
//
//  Created by i_eddiecheng on 2017/11/30.
//  Copyright © 2017年 Eddie. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    private lazy var summaryViewController: SummaryViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "SummaryViewController") as! SummaryViewController
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    
    private lazy var sessionsViewController: SessionsViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewcontroller = storyboard.instantiateViewController(withIdentifier: "SessionsViewController") as! SessionsViewController
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewcontroller)
        
        return viewcontroller
    }()
    
    private func add(asChildViewController viewController: UIViewController) {
        // Add Child View Controller
        self.addChildViewController(viewController)
        
        // Add Child View as Subview
        self.view.addSubview(viewController.view)
        
        // Configure Child View
        viewController.view.bounds = self.view.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Notify Child View Controller
        viewController.didMove(toParentViewController: self)
    }
    
    private func remove(asChildViewController viewController: UIViewController) {
        // Notify Child View Controller
        viewController.willMove(toParentViewController: nil)
        
        // Remove Child View From Superview
        viewController.view.removeFromSuperview()
        
        // Notify Child View Controller
        viewController.removeFromParentViewController()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setupView() {
        setupSegmentControl()
    }

    private func setupSegmentControl() {
        segmentControl.removeAllSegments()
        segmentControl.insertSegment(withTitle: "Summary", at: 0, animated: false)
        segmentControl.insertSegment(withTitle: "Sessions", at: 1, animated: false)
        segmentControl.addTarget(self, action: #selector(selectionDidChange(_:)), for: .valueChanged)
        
        segmentControl.selectedSegmentIndex = 0
    }
    
    @objc func selectionDidChange(_ sender: UISegmentedControl) {
        
        // updateView()
    }
    
    
}

