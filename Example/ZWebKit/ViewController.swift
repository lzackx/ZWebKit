//
//  ViewController.swift
//  ZWebKit
//
//  Created by lZackx on 08/03/2023.
//  Copyright (c) 2023 lZackx. All rights reserved.
//

import UIKit
import ZWebKit


class ViewController: ZBaseWebViewController {

    override func viewDidLoad() {
        self.startPage = "https://lzackx.com"
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

