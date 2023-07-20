//
//  ContentView.swift
//  InteractiveUIPractice
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    // Interactive Interface Notes
    
    /*
     // Controls
     - controls enable user interaction, they are things such as buttons, toggles, ect
     - used to determine the pathway from different views
     
     // Text fields
     - text inputs to get user information or data!TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
     !!!Note: Many components, or "Views", we can find in the livrary in the (click the corner "+" on the screen ==> then just drag and drop
     
     // States
     - basically the status of the SwiftUI View interface, and specifically the status of the data behind the scenes
     // almost like a folder that holds the values of all date (variables) in the program, and updates them as they change
     // two way binding: connecting an interaction or data input by the user to an existing variable in the Swift code
     */
    // Program
    // these are called properties
    @State private var name = ""
    @State private var textTitle = "What is your name, human??"
    
    
    // Interface
    var body: some View {
        
        
        VStack {
            Text(textTitle)
                .font(.title).multilineTextAlignment(.center)
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.778, saturation: 0.319, brightness: 0.94)).bold()
            TextField("Enter your name...", text: $name).multilineTextAlignment(.center)
                .font(.title2)
                .border(Color(hue: 0.765, saturation: 0.099, brightness: 0.996), width: 5.0).padding(5)
            Button("Submit"){
                print(name)
                textTitle = "Hello \(name)!!! Join me on my intergalactic journey!"
                
            }.font(.title2).buttonStyle(.borderedProminent).tint(Color(hue: 0.778, saturation: 0.319, brightness: 0.94)).cornerRadius(15)
            
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
