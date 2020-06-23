//
//  ContentView.swift
//  PlayWithJSON
//
//  Created by debi sani on 23/06/20.
//  Copyright © 2020 debi sani. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ObserverView()
                .tabItem {
                    Image(systemName: "hexagon.fill")
                    Text("Observable")
            }
            Text("Alamofire")
                .tabItem {
                    Image(systemName: "triangle.fill")
                    Text("Alamofire")
            }
            Text("Swifity")
                .tabItem {
                    Image(systemName: "circle.fill")
                    Text("Swifty")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
