//
//  ReduceView.swift
//  OnlineCourses
//
//  Created by ABDULRAHMAN AL-KHALED on 19/11/2023.
//

import SwiftUI

struct ReduceAndFilterView: View {
    @StateObject var vm = ModificationViewModel()
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    Spacer()
                    ForEach(vm.dataArray.filter({$0.isCompleted})){detail in
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
                                        .frame(height: 30)
                                    HStack{
                                        Image(systemName: "checkmark")
                                            .resizable()
                                            .foregroundStyle(.white)
                                            .frame(width: 8, height: 8)
                                            .padding(5)
                                            .background(Circle()
                                                .foregroundStyle(.green)
                                            )
                                        Text("Completed")
                                            .font(.subheadline)
                                            .bold()
                                    }
                                }
                            }
                        }.padding()
                            .background(RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth:0.5)
                                .frame(width: 380)
                            )
                    }
                    Text("Total durations: \(vm.reduceArray)")
                        .font(.title3)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    Button(){
                        
                    } label: {
                        Text("See the certification")
                            .foregroundStyle(.white)
                            .bold()
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10)
                            )
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                }
            }
            .navigationTitle("Completed courses")
            
        }
    }
}

#Preview {
    ReduceAndFilterView()
}
