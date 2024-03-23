//
//  ContentView.swift
//  newblogapp
//
//  Created by Md omor on 23/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ScrollView{
                ForEach(blogs){blog in
                    CardView(image: blog.image, category: blog.category, heading: blog.heading, author: blog.author)
                }
            }
        }
       
    }
}

#Preview {
    ContentView()
}


struct CardView : View {
    var image: String
    var category: String
    var heading: String
    var author: String
    var body: some View {
        VStack{
            Image(image).resizable().aspectRatio(contentMode: .fit)
                .padding()
            HStack{
                VStack(alignment: .leading){
                    Text(category).font(.headline).foregroundColor(.secondary)
                    
                    Text(heading).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.black).foregroundColor(.primary).lineLimit(3)
                    
                    Text(author).textCase(.uppercase).font(.caption)
                }.layoutPriority(100)
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB,red: 150/255, green: 150/255, blue: 150/255, opacity: 0.2), lineWidth: 1 )
        ).padding(.bottom)
        
    }
}
