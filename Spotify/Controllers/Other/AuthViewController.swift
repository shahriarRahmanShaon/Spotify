//
//  AuthViewController.swift
//  Spotify
//
//  Created by sergio shaon on 23/6/22.
//

import UIKit
import WebKit

class AuthViewController: UIViewController {

    private let webView: WKWebView = {
        var prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        let webView = WKWebView(frame: .zero, configuration: config)
        return webView
    }()
    //MARK: - completion handler for other controller to use
    public var completionHandler: ((Bool) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign In"
        view.backgroundColor = .systemBackground
        style()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }
    func style(){
        view.addSubview(webView)
    }
}
