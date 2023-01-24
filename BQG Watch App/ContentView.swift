//
//  ContentView.swift
//  BQG Watch App
//
//  Created by don kora jacob on 23/01/23.
//

import SwiftUI

struct ContentView: View {
    let bibleVerses = [
        "John 3:16 - For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.",
        "Psalm 23:1 - The Lord is my shepherd, I lack nothing.",
        "Isaiah 41:10 - So do not fear, for I am with you; do not be dismayed, for I am your God. I will strengthen you and help you; I will uphold you with my righteous right hand.",
        "Matthew 6:33 - But seek first his kingdom and his righteousness, and all these things will be given to you as well.",
        "Proverbs 3:5-6 - Trust in the Lord with all your heart and lean not on your own understanding; in all your ways submit to him, and he will make your paths straight.",
        "1 Corinthians 13:4-8 - Love is patient, love is kind. It does not envy, it does not boast, it is not proud. It does not dishonor others, it is not self-seeking, it is not easily angered, it keeps no record of wrongs. Love does not delight in evil but rejoices with the truth. It always protects, always trusts, always hopes, always perseveres.",
        "Isaiah 40:31 - But those who hope in the Lord will renew their strength. They will soar on wings like eagles; they will run and not grow weary, they will walk and not be faint.",
        "Matthew 7:7 - Ask, and it will be given to you; seek, and you will find; knock, and it will be opened to you.",
        "Jeremiah 29:11 - For I know the plans I have for you, declares the Lord, plans to prosper you and not to harm you, plans to give you hope and a future.",
        "Proverbs 16:3 - Commit to the Lord whatever you do, and he will establish your plans."
    ]

       @State private var currentQuote = 0
    var body: some View {
        VStack {
            VStack {
                ScrollView(.vertical){Text(bibleVerses[currentQuote])
                        .font(.caption).bold()
                        .multilineTextAlignment(.center)
                    .padding()}
                
                       Button(action: {
                           self.currentQuote = Int.random(in: 0..<self.bibleVerses.count)
                       }) {
                           Text("Generate Quote")
                       }
                   }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
