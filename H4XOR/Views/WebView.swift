//
//  WebView.swift
//  H4XOR
//
//  Created by Ankush Gussain on 21/10/22.
//

import Foundation

import WebKit
import SwiftUI

struct Webview:UIViewRepresentable{
    let urlString:String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

