//
//  ContentView.swift
//  SwiftUIPicker
//
//  Created by Chang Sophia on 4/23/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct role {
    var number: String
    var image: String
    var name: String
    var description: String
    var language: String
}
struct ContentView: View {
    
    let roles: [role] = [
        
        role(number: "1", image: "Andriod", name: "Andriod", description: "航海家族｜安卓麗德結妹", language: "Andriod"),
        role(number: "2", image: "Ruby&July", name: "Ruby&July", description: "來自東方的浪人｜盧比與七月", language: "Ruby"),
        role(number: "3", image: "Siri Hey", name: "Siri Hey", description: "最完美的航海士｜希瑞兒", language: "Siri"),
        role(number: "4", image: "Lady C++", name: "Lady C++", description: "雷之國的女王｜雷帝 希嘉嘉", language: "C++"),
        role(number: "5", image: "JAVASCRIPT", name: "JAVASCRIPT", description: "迷糊小魔女｜爪娃・絲葵", language: "JAVASCRIP"),
        role(number: "6", image: "PYTHON", name: "PYTHON", description: "雜耍詐欺師｜派森", language: "PYTHON"),
        role(number: "6", image: "ALPHA GO", name: "ALPHA GO", description: "來自空中的海盜｜阿法狗", language: "ALPHA GO"),
        role(number: "8", image: "Swift", name: "Swift", description: "蘋家果族｜彼得潘小王子", language: "Swift")
    ]
    
    @State private var pickindex = 0
    
    var body: some View {
        ZStack {
            Text("Who is the King of Coding Ocean?")
                .fontWeight(.black)
             .offset(y:-330)
             .font(.system(size: 38))
            .foregroundColor(Color(red:51/255, green: 51/255, blue: 153/255))
            Image("background")
            .resizable()
            .scaledToFit()
            .opacity(0.5)
            .offset(y:140)
            HStack {
                Picker(selection: $pickindex, label: Text("")) {
                    ForEach(0 ..< roles.count) { i in
                        Text(self.roles[i].number).tag(i)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .background(Color(red:153/255, green: 153/255, blue: 229/255))
                .border(Color.white)
                .cornerRadius(30)
                .shadow(radius: 30)
                .frame(width:400)
                .offset(x:0, y:-260)
            }
           Image("\(roles[pickindex].image)")
                .resizable()
                  .clipShape(Ellipse())
                    .scaledToFit()
                   .frame(width:300, height:500)
                   .offset(x:0, y:150)
                    
                Text("\(roles[pickindex].description)")
                    .offset(y:-200)
                    .font(.system(size: 30))
                    .foregroundColor(Color.black)
                Text("\(roles[pickindex].language)")
                    .offset(x:0, y:330)
                .font(.system(size: 50))
                .foregroundColor(Color.red)
            }
            .edgesIgnoringSafeArea(.all)
    .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
