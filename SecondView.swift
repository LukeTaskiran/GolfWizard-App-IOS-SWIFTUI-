//
//  SecondView.swift
//  GolfApp
//
//  Created by Luke Taskiran on 2022-05-02.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        
        ZStack{
            
            Color.black.edgesIgnoringSafeArea(.all)
        VStack{
            ZStack{
             
                Button {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.325) {
                        goHome()
                    }
                } label: {
                Image("top1").resizable().frame(width: UIScreen.main.bounds.width/1.05)
                    .clipped().cornerRadius(50)
                }
                Text("Songs to Keep Your Swing \n And Rhythm")
                    .font(Font.custom("Arial", size: 30.0))
                    .bold()
                    .foregroundColor(Color.white)
                    .padding()
                    .minimumScaleFactor(0.75)
                
            }.scaleEffect(0.95)
             
            
            ZStack{
                Button {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.325) {
                      goHome1()
                       // openURL(URL(string: "https://www.youtube.com/results?search_query=golf+tutorial+intermediate")!)
                        
                    }
                } label: {
                Image("middle").resizable().frame(width: UIScreen.main.bounds.width/1.05)
                    .clipped().cornerRadius(50)
                }
                Text("Tutorial And Improvement Videos")
                    .font(Font.custom("Arial", size: 30.0))
                    .bold()
                    .foregroundColor(Color.white)
                    .padding()
                    .minimumScaleFactor(0.75)
            }.scaleEffect(0.95)
                
            ZStack{
                Button {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.325) {
                        goHome2()
                       // openURL(URL(string: "https://www.calculator.net/golf-handicap-calculator.html")!)
                    }
                } label: {
                Image("bottom").resizable().frame(width: UIScreen.main.bounds.width/1.05)
                    .clipped().cornerRadius(50)
                }
                Text("Golf Handicap & Strokeplay Calculator")
                    .font(Font.custom("Arial", size: 30.0))
                    .bold()
                    .foregroundColor(Color.white)
                    .padding()
                    .minimumScaleFactor(0.75)
            }
            .scaleEffect(0.95)
                            
        }.multilineTextAlignment(.center)
        }
        
        
    }
    func goHome() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: SongsView())
            
            window.makeKeyAndVisible()
        }
    }
    func goHome1() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: VideoView())
            
            window.makeKeyAndVisible()
        }
    }
    func goHome2() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: CalcView())
            
            window.makeKeyAndVisible()
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
