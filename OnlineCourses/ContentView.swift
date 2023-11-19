//
//  ContentView.swift
//  OnlineCourses
//
//  Created by ABDULRAHMAN AL-KHALED on 18/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SortView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
            }
        }
    }
}

#Preview {
    ContentView()
}
