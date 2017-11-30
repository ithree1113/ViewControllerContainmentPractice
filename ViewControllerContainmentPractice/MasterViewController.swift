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

