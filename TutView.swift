//
//  TutView.swift
//  GolfApp
//
//  Created by Luke Taskiran on 2022-05-04.
//

import SwiftUI

struct TutView: View {
    var body: some View {
        NavigationView{
            VStack{
                WebView(url: URL(string: "https://www.youtube.com/results?search_query=golf+tutorial+intermediate")!).offset(y:-40)
            
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

struct TutView_Previews: PreviewProvider {
    static var previews: some View {
        TutView()
    }
}
