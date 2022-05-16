//
//  Home.swift
//  GolfApp
//
//  Created by Luke Taskiran on 2022-05-02.
//

import SwiftUI
import UserNotifications
struct Home: View {
    @State var times: String = ""
    var body: some View {
        VStack{
            
                Text("The timer will go for 4.5 hours (18 Holes). Once you start your round press play, close the app and I will notify you how you are doing and keep you motivated ")
                    .font(Font.custom("Arial", size: 18.0))
                    .bold()
                    .padding()
                    .padding()
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .background(Color.green)
                    .cornerRadius(60)
                    .padding(.bottom,30)
            
            Timers()
        }.padding()
        .background(Color.black)
            
    }
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

    struct Timers: View{
        @State var showingAlert = false
        @State var start = false
        @State var to : CGFloat = 0
        @State var count = 0
        @State var time = Timer.publish(every: 60, on: .main, in: .common).autoconnect()
        @State var isSoundOn: Bool = true
        var body: some View{
            
            ZStack{
                
                Color.black.edgesIgnoringSafeArea(.all)
                
                
                VStack{
                    VStack {
                                Text(isSoundOn ? "Playing 18 Holes" : "Playing 9 Holes")
                                    .foregroundColor(isSoundOn ? .green : .white)
                                    .bold()
                                    .font(Font.custom("Arial", size: 18.0))
                                Toggle("Sound", isOn: $isSoundOn)
                                    .labelsHidden()
                            }.padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(lineWidth: 2)
                                    .foregroundColor(isSoundOn ? .green : .white)
                            )
                            .padding(.bottom,35)
                    ZStack{
                        
                        Circle()
                        .trim(from: 0, to: 1)
                        .stroke(Color.green.opacity(0.55), style: StrokeStyle(lineWidth: 35, lineCap: .round))
                        .frame(width: 200, height: 200)
                        
                        Circle()
                            .trim(from: 0, to: self.to)
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 35, lineCap: .round))
                        .frame(width: 200, height: 200)
                        .rotationEffect(.init(degrees: -90))
                        
                        
                        VStack{
                            
                            Text("\(self.count)")
                                .font(.system(size: 65))
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                            
                            Text("min")
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            
                            
                        }
                    }
                    
                    HStack(spacing: 20){
                        
                        Button(action: {
                            
                            if self.count == 269{
                                
                                self.count = 0
                                withAnimation(.default){
                                    
                                    self.to = 0
                                }
                            }
                            self.start.toggle()
                            
                        }){
                            
                            HStack(spacing: 15){
                                
                                Image(systemName: self.start ? "pause.fill" : "play.fill")
                                    .foregroundColor(.white)
                                
                                Text(self.start ? "Pause" : "Play")
                                    .foregroundColor(.white)
                            }
                            .padding(.vertical)
                            .frame(width: (UIScreen.main.bounds.width / 2) - 55)
                            .background(Color.green)
                            .clipShape(Capsule())
                            .shadow(radius: 6)
                        }
                        
                        Button(action: {
                            
                            self.count = 0
                            
                            withAnimation(.default){
                                
                                self.to = 0
                            }
                            
                        }) {
                            
                            HStack(spacing: 15){
                                
                                Image(systemName: "arrow.clockwise")
                                    .foregroundColor(.green)
                                
                                Text("Restart")
                                    .foregroundColor(.green)
                                
                            }
                            .padding(.vertical)
                            .frame(width: (UIScreen.main.bounds.width / 2) - 55)
                            .background(
                            
                                Capsule()
                                    .stroke(Color.green, lineWidth: 2)
                            )
                            .shadow(radius: 6)
                        }
                    }
                    .padding(.top, 35)
                }
                
            }
            .onAppear(perform: {
                
                UNUserNotificationCenter.current().requestAuthorization(options: [.badge,.sound,.alert]) { (_, _) in
                }
            })
            .onReceive(self.time) { (_) in
                
                if self.start{
                    
                    if self.count == 14{
                    //15 minutes
                        print("first noty")
                        self.Notify1()
                    }
                   if self.count == 44{
                    //45 minutes
                       print("second noty")
                        self.Notify2()
                    }
                    if self.count == 74{
                    //1 hour and 15 minutes
                    
                        self.Notify3()
                    }
                    if self.count == 104{
                    // 1 hour and 45 minutes
                        
                        self.Notify4()
                    }
                    if self.count == 134{
                    // 2 hours and 15 minutes
                        
                        self.Notify5()
                    }
                    if self.count == 164{
                    // 2 hours and 45 minutes
                        
                        self.Notify6()
                    }
                    if self.count == 194{
                    // 3 hours and 15 minutes
                        
                        self.Notify7()
                    }
                    if self.count == 224{
                    // 3 hours and 45 minutes
                        
                        self.Notify8()
                    }
                    if self.count == 254{
                    // 4 hours and 15 minutes
                        
                        self.Notify9()
                    }
                    if self.count == 269{
                        // 4 hours and 30 minutes END
                        self.start.toggle()
                        self.Notify()
                    }
                    if self.count != 269{
                        
                        self.count += 1
                        print("count increase")
                        
                        withAnimation(.default){
                            
                            self.to = CGFloat(self.count) / 269
                        }
                    }

                }
                
            }
            
        }
        
        func Notify(){
            
            let content = UNMutableNotificationContent()
            content.title = "Congrulations!! You done"
            content.body = "You better be finished or putting on 18 right now !!! GOOD JOB"
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            
            let req = UNNotificationRequest(identifier: "MSG", content: content, trigger: trigger)
            
            UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
        }
        func Notify1(){
            
            let content = UNMutableNotificationContent()
            content.title = "We Just Started Keep the Pace"
            content.body = "First hole done hopefully, keep moving and focus (15 minutes)"
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            
            let req = UNNotificationRequest(identifier: "MSG", content: content, trigger: trigger)
            
            UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
        }
        func Notify2(){
            
            let content = UNMutableNotificationContent()
            content.title = "Okay!!! Warming Up Now"
            content.body = "Keep that pace up now, you should be past 3 hole (45 minutes)"
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            
            let req = UNNotificationRequest(identifier: "MSG", content: content, trigger: trigger)
            
            UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
        }
        func Notify3(){
            
            let content = UNMutableNotificationContent()
            content.title = "Keep Your Head Up and Focus"
            content.body = "Believe in every hit, you got this (1 hour and 15 minutes)"
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            
            let req = UNNotificationRequest(identifier: "MSG", content: content, trigger: trigger)
            
            UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
        }
        func Notify4(){
            
            let content = UNMutableNotificationContent()
            content.title = "Slice So What"
            content.body = "So what that wasn't the shot lets keep it going and hopefully you past hole 6 (1 hour and 45 minutes)"
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            
            let req = UNNotificationRequest(identifier: "MSG", content: content, trigger: trigger)
            
            UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
        }
        func Notify5(){
            
            let content = UNMutableNotificationContent()
            content.title = "Half Way Through"
            content.body = "You reached the back nine, right? Let's keep that drive and trust your putt (2 hour and 15 minutes)"
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            
            let req = UNNotificationRequest(identifier: "MSG", content: content, trigger: trigger)
            
            UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
        }
        func Notify6(){
            
            let content = UNMutableNotificationContent()
            content.title = "This Is Your Game"
            content.body = "Put Your Head Up and forget the ROUGH (2 hour and 45 minutes)"
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            
            let req = UNNotificationRequest(identifier: "MSG", content: content, trigger: trigger)
            
            UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
        }
        func Notify7(){
            
            let content = UNMutableNotificationContent()
            content.title = "Let's Keep It Up"
            content.body = "Nothing else to say right now but be you (3 hour and 15 minutes)"
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            
            let req = UNNotificationRequest(identifier: "MSG", content: content, trigger: trigger)
            
            UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
        }
        func Notify8(){
            
            let content = UNMutableNotificationContent()
            content.title = "Almost There"
            content.body = "You are really close to 18, don't give up now (3 hour and 45 minutes)"
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            
            let req = UNNotificationRequest(identifier: "MSG", content: content, trigger: trigger)
            
            UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
        }
        func Notify9(){
            
            let content = UNMutableNotificationContent()
            content.title = "Last Check"
            content.body = "Hopefully you are almost done but you been doing amazing, always believe in yourself (4 hour and 15 minutes)"
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            
            let req = UNNotificationRequest(identifier: "MSG", content: content, trigger: trigger)
            
            UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
        }
       
    }
        
    
    
    

