//
//  ObserverView.swift
//  PlayWithJSON
//
//  Created by debi sani on 24/06/20.
//  Copyright © 2020 debi sani. All rights reserved.
//

import SwiftUI

struct ObserverView: View {
     @ObservedObject var fetch = ObserverModel()
       
    var body: some View {
        NavigationView {
            List(fetch.post) { posts in
                VStack(alignment: .leading) {
                    Text(posts.title)
                    Text("\(posts.completed.description)")
                        .modifier(CustomModifier(color: .white, fontSize: 11))
                }
            }
            .navigationBarTitle("🎲 ObservableObject")
        }
    }
}

struct ObserverView_Previews: PreviewProvider {
    static var previews: some View {
        ObserverView()
    }
}

struct CustomModifier: ViewModifier {
    @State var color = Color.gray
    @State var fontSize: CGFloat = 11
    
    func body(content: Content) -> some View {
        return content
            .font(.system(size: fontSize))
            .foregroundColor(color)
            .padding(2)
            .background(Color.gray)
            .cornerRadius(5)
    }
}
