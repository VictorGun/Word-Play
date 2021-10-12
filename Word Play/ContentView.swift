//
//  ContentView.swift
//  Word Play
//
//  Created by Student on 10/4/21.
//

//* madlib story is the camping one link: // https://www.google.com/url?sa=i&url=https%3A%2F%2Fziggityzoom.com%2Ffun-lunch-notes%2F&psig=AOvVaw2Qu5nSyg1XBIDgq-1f4Ff_&ust=1633793696782000&source=images&cd=vfe&ved=0CAoQ3YkBahcKEwj4x6_7kbvzAhUAAAAAHQAAAAAQAw //*

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Word Play")
                    .font(.title)
                    .bold()
                Text("Please enter the requested words below")
                HStack {
                    CustomTextField(placeholder: "noun", variable: $words.noun0)
                    CustomTextField(placeholder: "noun", variable: $words.noun1)
                    CustomTextField(placeholder: "noun", variable: $words.noun2)
                }
                HStack {
                    CustomTextField(placeholder: "animal", variable: $words.animal0)
                    CustomTextField(placeholder: "animal", variable: $words.animal1)
                }
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective0)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective1)
                }
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective2)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective3)
                }
                
                NavigationLink("Next", destination: StoryView(words: words))
                Spacer()
                    
            }
        }
        .navigationTitle("Word Play")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Words {
    var noun0 = ""
    var noun1 = ""
    var noun2 = ""
    
    var animal0 = ""
    var animal1 = ""
    
    var adjective0 = ""
    var adjective1 = ""
    var adjective2 = ""
    var adjective3 = ""
}

struct CustomTextField: View  {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}
