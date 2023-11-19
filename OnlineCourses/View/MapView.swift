//
//  MapView.swift
//  OnlineCourses
//
//  Created by ABDULRAHMAN AL-KHALED on 18/11/2023.
//

import SwiftUI

struct MapView: View {
    @StateObject var vm = ModificationViewModel()
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 15){
                    ForEach(vm.mapArray, id: \.self){ course in
                            Image(course)
                                .resizable()
                                .frame(width: 200,height: 200)
                                .padding()

                    }
                }
            }.padding()
            .navigationTitle("My badges")
        }
    }
}

#Preview {
    MapView()
}
