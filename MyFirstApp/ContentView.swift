//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Pathompong Phongsaporamut on 21/10/2563 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State var name:String = "วันนี้กินอะไรดี"
    @State var rand:Int = 0
    @State var count:Int = 0
    
    var body: some View {
        VStack {
            Text(name)
                .font(.largeTitle)
                .foregroundColor(.red)
                .frame(width: 300, height: 300, alignment: .center)
                .padding()
            Button(action: {
                
                self.rand = Int.random(in: 0...4)
                
                let menuList = ["กะเพราหมูกรอบ","ข้าวผัดปู","ข้าวมันไก่","ส้มตำ","ข้าวหมูแดง"]
                
                self.name = menuList[rand]
                
                self.count += 1
                
            }) {
                Text("สุ่มเมนู")
            }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("สุ่มไปแล้ว " + String(count) + " ครั้ง")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
