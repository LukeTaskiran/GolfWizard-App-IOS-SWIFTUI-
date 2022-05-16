//
//  ThirdView.swift
//  GolfApp
//
//  Created by Luke Taskiran on 2022-05-02.
//

import SwiftUI

struct ThirdView: View {
   // @State var interstitial: GADInterstitialAd?
     @Environment(\.openURL) var openURL
     var body: some View {
         VStack(spacing: 50){
             VStack{
             Image("golfappicon")
                 .resizable()
                 .clipped()
                 .scaledToFit()
                 .cornerRadius(30)
                 .scaleEffect(1)
                 .padding()
                 
             
                 
             AboutSide()
                     .scaleEffect(1.2)
         }
         .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height/1.25)
             VStack{
                 Button(action: {
                    EmailHelper.shared.sendEmail(subject: "Issues/Question about Golf Wizard", body: "If you have any issues or ideas, send me an email!!", to: "luke.taskiran@gmail.com")
                  }) {
                      VStack{
                      Text("Send Me An Email")
                          .font(Font.custom("Arial", size: 25.0))
                          .lineLimit(2)
                          .padding()
                      Image(systemName: "paperplane.circle.fill")
                              .scaleEffect(3.5)
                              .padding()
                             
                      }
                  }
                     .scaledToFill()
                
                 
               // BannerAd().frame(width: 320, height: 100, alignment: .center)
                                     
             }
             .offset(y:-50)
             .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height/4)
         }/*.onAppear(perform: {
             DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                 // your code here
             let request = GADRequest()
                     GADInterstitialAd.load(withAdUnitID:"ca-app-pub-5472498112928020/4285333594",
                                                 request: request,
                                       completionHandler: { [self] ad, error in
                                         if let error = error {
                                           return
                                         }
                              // Change these two lines of code
                             
                              // To...
                              interstitial = ad
                              let root = UIApplication.shared.windows.first?.rootViewController
               self.interstitial!.present(fromRootViewController: root!)
                                       }
                     )

             }})
         .frame(maxWidth: .infinity, maxHeight: .infinity)
       
         .frame(width: UIScreen.main.bounds.height/2, height: UIScreen.main.bounds.height/2)
     }*/
     }
 }

 struct About_Previews: PreviewProvider {
     static var previews: some View {
         ThirdView()
     }
 }
 struct AboutSide: View{
     @Environment(\.openURL) var openURL
     var body: some View{
         VStack(spacing:25){
         Button("Check Me Out"){
             openURL(URL(string: "https://www.linkedin.com/in/luke-taskiran-8466a419a/")!)
             
         }
             .font(.system(size: 20, weight: .semibold, design: .rounded))
             .frame(width: 200, height: 60)
             .background(
                 ZStack {
                    
                     
                     RoundedRectangle(cornerRadius: 16, style: .continuous)
                         .foregroundColor(.gray)
                         .blur(radius: 4)
                         .offset(x: -4, y: -4)
                     
                     RoundedRectangle(cornerRadius: 16, style: .continuous)
                         .fill(
                             LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9019607843, green: 0.9294117647, blue: 0.9882352941, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                     )
                         .padding(1.5)
                         .blur(radius: 1)
                 }
             )
             
             
             Button("More About Golf"){
                 openURL(URL(string: "https://www.golfdigest.com/gallery/golf-beginners-tips")!)
                 
             }
                 .font(.system(size: 20, weight: .semibold, design: .rounded))
                 .frame(width: 200, height: 60)
                 .background(
                     ZStack {
                         
                         RoundedRectangle(cornerRadius: 16, style: .continuous)
                             .foregroundColor(.gray)
                             .blur(radius: 4)
                             .offset(x: -4, y: -4)
                         
                         RoundedRectangle(cornerRadius: 16, style: .continuous)
                             .fill(
                                 LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9019607843, green: 0.9294117647, blue: 0.9882352941, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                         )
                             .padding(1.5)
                             .blur(radius: 1)
                     }
                 )
                
     }
     }
     
 }
