//
//  StoryView.swift
//  Word Play
//
//  Created by Student on 10/5/21.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        Text(writeStory())
        
    }
func writeStory() -> String {
    return "Camping is \(words.adjective0). " + "You might see \(words.animal0) and \(words.animal1). " + "The food which is cooked over the \(words.noun0) is very \(words.adjective1). " + "The best part of camping is using the \(words.noun1), which is very \(words.adjective2). " + "At night, the tent is extremely \(words.adjective3). " + "Its always best to take a \(words.noun2) camping with you."
    
    }
}


struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}
