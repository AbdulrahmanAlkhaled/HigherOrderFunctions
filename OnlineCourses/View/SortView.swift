//
//  SortView.swift
//  OnlineCourses
//
//  Created by ABDULRAHMAN AL-KHALED on 18/11/2023.
//

import SwiftUI

struct SortView: View {
    @StateObject var vm = ModificationViewModel()
    var body: some View {
        NavigationStack{
            ScrollView{
                Spacer()
                VStack(spacing: 15){
                    ForEach(vm.sortArray){detail in
                        HStack{
                            Image(detail.image)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            VStack(spacing: 10){
                                Text(detail.universityName)
                                    .font(.footnote)
                                    .foregroundStyle(.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text(detail.title)
                                    .font(.headline)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Divider()
                                    .frame(width: 150)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                HStack{
                                    Text("\(detail.courseType) degree")
                                        .foregroundStyle(.gray)
                                    Divider()
                                    Text("Price: \(detail.coursePrice)$")
                                        
                                }.frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }.padding()
                            .background(RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth:0.5)
                                .frame(width: 380)
                            )
                    }
                }
            }
            .navigationTitle("Select the course")
        }
       }
    }
#Preview {
    SortView()
}
