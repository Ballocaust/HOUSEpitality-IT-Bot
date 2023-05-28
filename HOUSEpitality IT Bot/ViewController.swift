//
//  ViewController.swift
//  HOUSEpitality IT Bot
//
//  Created by Keith McIntyre on 5/27/23.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    let webview = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webview)

        guard let url = URL(string: "https://app.customgpt.ai/projects/1462/ask-me-anything?shareable_slug=edfc88920de9c04cba8e19c2c8f61e76") else {
            return
        }
        webview.load(URLRequest(url: url))
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webview.frame = view.bounds
    }
}

