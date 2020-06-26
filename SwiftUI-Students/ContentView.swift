//
//  ContentView.swift
//  SwiftUI Students Demo
//
//  Created by Christoph Krassnigg on 26.06.20.
//  Copyright © 2020 Christoph Krassnigg. All rights reserved.
//


import SwiftUI

struct Student: Identifiable {
    var id = UUID()
    var name: String
    var description: String
}

struct ContentView: View {
    
  let modelData: [Student] = [
    Student(name: "Pascal", description: "Hey there, I am Pascal"),
    Student(name: "Fabian", description: "Hello there, I am a fresh dude"),
    Student(name: "Jonny", description: "¡Holla chikos! ¿Hobla español?"),
    Student(name: "Laurens", description: "It's me, Laurens")
    ]

    var body: some View {
         NavigationView() {
              List(modelData) { student in
                NavigationLink(destination: VStack{
                    Text(student.name).font(.title)
                    Text(student.description)
                }) {
                      HStack {
                        Text(student.name)
                      }.font(.title)
                  }
              }
              .navigationBarTitle(Text("Students"))
          }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
