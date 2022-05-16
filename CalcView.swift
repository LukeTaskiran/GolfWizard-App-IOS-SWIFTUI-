//
//  CalcView.swift
//  GolfApp
//
//  Created by Luke Taskiran on 2022-05-04.
//

import SwiftUI
import WebKit
struct CalcView: View {
    var body: some View {
      
        NavigationView{
            VStack{
                WebView(url: URL(string: "https://www.calculator.net/golf-handicap-calculator.html")!).offset(y:-40)
            
                   // BannerAd().frame(width: .infinity, height: 100, alignment: .center)
            }.background(Color.black)
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Button {
                           goHome3()
                        } label: {
                            Image(systemName: "arrow.backward.square.fill")
                                .scaleEffect(1.5).padding()
                                
                        }
                    }
                }
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
    func goHome3() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: ContentView())
            
            window.makeKeyAndVisible()
        }
    }
}

struct CalcView_Previews: PreviewProvider {
    static var previews: some View {
        CalcView()
    }
}

struct WebView: UIViewRepresentable {
 
    var url: URL
 
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
 
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
